#!/bin/bash

# Gets the first match for Wi-Fi interface and uses that in the script
INTERFACE=$(ip link show | grep -Eo "wl[a-zA-Z0-9]+" | head -n 1)

echo "Using interface: $INTERFACE"

while true; do
    # MAC address randomization
    sudo ifconfig "$INTERFACE" down 2>/dev/null
	echo "Started automated MAC & IP Address randomization"
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
