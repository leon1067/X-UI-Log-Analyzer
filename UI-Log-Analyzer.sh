#!/bin/bash

while true; do
    tail -n 3 access.log | while IFS= read -r line; do
        ip_address=$(echo "$line" | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}|([a-fA-F0-9]{1,4}:){7,7}[a-fA-F0-9]{1,4}' | tail -n 1)
        
        if [ ! -z "$ip_address" ]; then
            domain=$(host $ip_address | grep -oE 'domain name pointer (.+)' | awk '{print $4}')
            
            if [ -z "$domain" ]; then
                # If domain is not found, use whois
                whois_output=$(whois $ip_address)
                # Extract domain from whois output, you may need to adjust this based on the whois response format
                domain=$(echo "$whois_output" | grep -i "domain name" | awk '{print $NF}')
            fi
            
            color_domain=$(tput setaf 2)  # 
            color_gmail=$(tput setaf 3)   # 
            color_ip_source=$(tput setaf 4)  # 
            
            if [[ $domain == *"gmail.com"* ]]; then
                echo "${color_gmail}$line, Domain: ${color_domain}$domain$(tput sgr0)"
            else
                echo "${color_ip_source}$line, Domain: ${color_domain}$domain$(tput sgr0)"
            fi
        else
            echo "$line"
        fi
    done
    
    sleep 3
done
