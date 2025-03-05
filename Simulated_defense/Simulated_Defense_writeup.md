# Enumerating the host network
Here we will be using my own network, which is a laptop connected to a mobile hotspot for this demonstration:-
- We we run ```nmap``` on the device IP  to check for open ports

	![1_device_IP_lookup.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/1_device_IP_lookup.jpeg)

	![2_nmap_scan_results.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/2_nmap_scan_results.jpeg)

- We can see that port ```5900``` is open which is the port used for ```vnc``` Trying to access it via localhost we see it is working fine

	[3_vncviewer_accessible_on_127.0.0.1.ogv](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/3_vncviewer_accessible_on_127.0.0.1.ogv)

	We can also see that it is possible to set up a VNC session even with the private IP

	[4_vncviewer_accessible_on_private_IP.ogv](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/4_vncviewer_accessible_on_private_IP.ogv)

- We will set up our firewall to prevent anyone from accessing the ```vnc``` session. We will use ```ufw``` for this purpose. It stands for ```Uncomplicated Firewall``` and is a great tool for quickly setting up a firewall.

	![5_setting_up_ufw.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/5_setting_up_ufw.png)

	- ```sudo ufw allow 20```, ```sudo ufw allow 80```, ```sudo ufw allow 443```
		These are the SSH, HTTP and HTTPS ports respectively. Since these are very commonly used ports we should allow them from daily usage perspective.
	- ```sudo ufw default deny incoming```, ```sudo ufw default allow outgoing```
		We ideally want to deny any incoming connection requests unless we trust them. Hence we deny conenction to all ports except the ones that we allowed previously. 

		We also allowed all outgoing conections by default. This is so we can do everyday tasks on the web and other official work like database management and the like. If one has to be extra cautious, they could use ```sudo ufw default deny outgoing``` and then allow outgoing conenctions from certain ports which the user want to use like ```sudo ufw allow out 20```, ```sudo ufw allow out 80```, ```sudo ufw allow out 443```. Using only ```sudo ufw default deny outgoing``` may cause applications depending primarily on internet to crash/ not function properly and hence not recommended for everyday use.

	- ```sudo ufw allow from 192.168.1.0/24``` This is to allow LAN connections for file sharing using ```FTP``` and other useful services while blocking external network traffic.
	- ```sudo ufw limit ssh``` is a measure to migitate potential Denial of Service attacks.
	- ```sudo ufw logging on``` in case of a breach, we can refer to the log files to find more infromation on the person breaking into the network.

	![6_setting_up_ufw_logging.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/6_setting_up_ufw_logging.png)

	- Since we do not want to log everything like every connection we make to a server everytime we browser, hence we use ```sudo ufw logging medium``` to log only blocked connections and a few allowed ones.
	- Lastly we enable log rotation with ```cat /etc/logrotate.d/ufw```. Without it, logs can grow indefinitely, consuming disk space and making log analysis difficult.
- Now we need to make sure it is only our device which is able to create a session, hence we try to enumerate the network from a different device, a phone.
	![7_pinging_via_hotspot_provider.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/7_pinging_via_hotspot_provider.jpeg)

	![8_ufwIsUp_vnc_accessible_locally_only.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/8_ufwIsUp_vnc_accessible_locally_only.png)
	We can see that out firewall is set up and ```vncviewer```  vulnerability has also been removed. The system is secure for the time being.

# MAC & IP randomisation
We have a tool called ```macchanger``` to change our MAC address. Changing the MAC address is primarily done to enhance privacy by obscuring device identity on public Wi-Fi networks, making it harder to track our online activity and location. Just another layer of privacy which is good to have. We can also change our IPv4 and IPv6 address via ```dhclient``` although it is better to change the former less frequently to avoid a bad internet experience as a daily user.

We will first install ```macchanger``` on our linux system

![9_installing_macchanger.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/9_installing_macchanger.png)

Then we can try and change our MAC address by doing the following

```
sudo ifconfig wlan0 down
sudo macchanger -r wlan0
sudo ifconfig wlan0 up
```

Ofcourse it would be nice to have our internet address change on their own. So I made a custom script just for that

```
#!/bin/bash

INTERFACE="wlan0"

echo "Started automated MAC & IP Address randomisation. Press [Ctrl + C] to stop"

while true; do
	# MAC address randomisation
	sudo ifconfig "$INTERFACE" down
	sudo macchanger -r "$INTERFACE"
	sudo ifconfig "$INTERFACE" up

	sleep 5
done &

while true; do
    # IPv4 randomisation
    sudo dhclient -4 -r wlan0
    sudo dhclient -4 -r eth0

    sudo dhclient -4 wlan0
    sudo dhclient -4 eth0

	# IPv6 randomisation
	sudo dhclient -6 -r wlan0
	sudo dhclient -6 -r eth0

	sudo dhclient -6 wlan0
	sudo dhclient -6 eth0

        sleep 1800
done
```

This is great, but it had some issues with the output messages so I made some modifications

```
#!/bin/bash

# Gets the first match for Wi-Fi interface and uses that in the script
INTERFACE=$(ip link show | grep -Eo "wl[a-zA-Z0-9]+" | head -n 1)

echo "Using interface: $INTERFACE"

while true; do

![11_IP_before.jpeg](:/5c9dbe163a1345a99bad4e8d572cc28d)


    # MAC address randomization
    sudo ifconfig "$INTERFACE" down 2>/dev/null
    sudo macchanger -r "$INTERFACE"  2>/dev/null
    sudo ifconfig "$INTERFACE" up 2>/dev/null

    sleep 5
done & 

while true; do
    # IPv4 randomization
    sudo dhclient -4 -r "$INTERFACE" 2>/dev/null && printf "[INFO] Released IPv4 address... \n"
    sudo dhclient -4 "$INTERFACE" 2>/dev/null && printf "New IPv4 obtained.\n"

    # IPv6 randomization
    sudo dhclient -6 -r "$INTERFACE" 2>/dev/null && printf "[INFO] Released IPv6 address... \n"
    sudo dhclient -6 "$INTERFACE" 2>/dev/null && printf "New IPv6 obtained.\n"

    sleep 1800
done
```

```2>&dev/null``` properly handles any unwanted errors/output and displays only our custom output.
The script changes the MAC address once every 5 seconds and the IP address once every 30 minutes

Example of the IP address being changed:
![11_IP_before.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/11_IP_before.jpeg)

After 30 mins

![12_IP_after.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/12_IP_after.jpeg)

Bear in mind that it does require a while to obtain a new IP address in a home network. Public places are the best use case.

Now to run the script at login, we will go to ```~/.config/autostart``` and create a ```.desktop``` file
```
[Desktop Entry]
Type=Application
Exec=/usr/local/bin/your_script.sh
Hidden=false
NoDisplay=true 
X-GNOME-Autostart-enabled=true
Name=MAC_IP_randomiser
```
Now our MAC and IP addresses will randomised periodically everytime we use our machine.

# Proxychaining
It is a concept where we route our connection through multiple IP addresses to obfuscate our actuap IP and subsequently giving away critical information about us. We will be using a tool called ```proxychains``` on Kali Purple to demonstrate this.
1. Install proxychains via ```sudo apt install proxychains```
2. We will need to locate the configuration file via ```locate proxychains``` and open up ```proxychains.conf``` in a text editor.
3. Once on the configuration file, we will have the option to choose from ```strict-chain```, ```dynamic-chain``` or ```random-chain```. The one selected by default, ```strict-chain``` will fail even if one fo the proxies is down as we can see in the documentation. Hence the better option is either ```dynamic-chain``` or ```random-chain```. We will use ```dynamic-chain``` for this demonstration but uncommenting it and commenting ```strict-chain```.

	![13_setting_up_proxychains_dynamic.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/13_setting_up_proxychains_dynamic.jpeg)

4. Navigating to the bottom of the ```.conf``` file, we get the option to add our proxies in the fomat ```connection-protocol IP PORT``` as shown in the default proxy already set up in the file.

	![14_adding_proxies.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/14_adding_proxies.jpeg)

5. Now our ```nmap``` scans or even browsing are secure, in sense that it is very difficult to trace back the connection we made back to us.

	![15_IPv4_not_detected.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_defense/15_IPv4_not_detected.jpeg)

## Obviously, no machine is completely safe, that's Hacking 101. Most the times its the user themselves who are weakest link in the system.
