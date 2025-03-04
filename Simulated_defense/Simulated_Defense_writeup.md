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

## Obviously, no machine is completely safe, that's Hacking 101. Most the times its the user themselves who are weakest link in the system.
