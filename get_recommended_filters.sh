#!/bin/bash

# declare an array of urls
urls=(
  https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_adblock.txt
  https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_gambling.txt
  https://raw.githubusercontent.com/mullvad/dns-blocklists/main/output/doh/doh_privacy.txt
  https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Risk/hosts
  https://adaway.org/hosts.txt
  https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts
  https://raw.githubusercontent.com/bigdargon/hostsVN/master/option/domain.txt
  https://raw.githubusercontent.com/hagezi/dns-blocklists/main/wildcard/light-onlydomains.txt
  https://raw.githubusercontent.com/hagezi/dns-blocklists/main/wildcard/pro.mini-onlydomains.txt
)

# download all files in parallel and append them to blocklist.txt
node download_lists.js blocklist.txt ${urls[@]}

# print a message when done
echo "Done. The blocklist.txt file contains merged data from recommended filter lists."
