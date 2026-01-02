#!/bin/bash

GREEN="\e[32m"
RESET="\e[0m"

clear
echo -e "${GREEN}"
cat << "EOF"
██████╗  ██████╗ ██████╗      ██╗ ██████╗ ██╗  ██╗
██╔══██╗██╔═══██╗██╔══██╗     ██║██╔═══██╗╚██╗██╔╝
██████╔╝██║   ██║██║  ██║     ██║██║   ██║ ╚███╔╝ 
██╔══██╗██║   ██║██║  ██║██   ██║██║   ██║ ██╔██╗ 
██████╔╝╚██████╔╝██████╔╝╚█████╔╝╚██████╔╝██╔╝ ██╗
╚═════╝  ╚═════╝ ╚═════╝  ╚════╝  ╚═════╝ ╚═╝  ╚═╝
       BEST CYBERSECURITY TOOL
EOF
echo -e "${RESET}"

search_google() {
    local query="$1"
    local search_command="https://www.google.com/search?q="


    local search_url="$search_command$query"


    if command -v xdg-open &>/dev/null; then
        
        xdg-open "$search_url"
    else
        echo "Error: xdg-open is not installed. Please install it to proceed with the Google searches."
        exit 1
    fi
}

# Main script
read -p "Enter your domain : " domain

# Basic Google dork commands
google_dorks=(
    "site:$domain"
    "intitle:$domain"
    "inurl:$domain"
    "filetype:pdf $domain"
    "related:$domain"
)

# Advanced Google dork commands
advanced_google_dorks=(
    "allinurl:$domain"
    "allintext:$domain"
    "cache:$domain"
    "link:$domain"
    "info:$domain"
    "site:"$domain" ext:log | ext:txt | ext:conf | ext:cnf | ext:ini | ext:env | ext:sh | ext:bak | ext:backup | ext:swp | ext:old | ext:~ | ext:git | ext:svn | ext:htpasswd | ext:htaccess | ext:json"
    "inurl:conf | inurl:env | inurl:cgi | inurl:bin | inurl:etc | inurl:root | inurl:sql | inurl:backup | inurl:admin | inurl:php site:$domain"
    "inurl:q= | inurl:s= | inurl:search= | inurl:query= | inurl:keyword= | inurl:lang= inurl:& site:$domain"
    "inurl:url= | inurl:return= | inurl:next= | inurl:redirect= | inurl:redir= | inurl:ret= | inurl:r2= | inurl:page= inurl:& inurl:http site:$domain"
    "site:$domain intext:”choose file” | intext:"select file" | intext:"upload PDF" "
    "inurl:login | inurl:signin | intitle:login | intitle:signin | inurl:secure site:$domain"
    "site:$domain ext:txt | ext:pdf | ext:xml | ext:xls | ext:xlsx | ext:ppt | ext:pptx | ext:doc | ext:docx
intext:“confidential” | intext:“Not for Public Release” | intext:”internal use only” | intext:“do not distribute”"
    "site:openbugbounty.org inurl:reports intext:$domain"
    "site:pastebin.com "$domain""
    
    
    
    
    
    
    
)

# Combine basic and advanced dorks
all_google_dorks=("${google_dorks[@]}" "${advanced_google_dorks[@]}")

# Iterate over each Google dork command and open in a new tab
for dork in "${all_google_dorks[@]}"; do
    search_google "$dork"
done





urlencode() {
    local string="$1"
    python3 - <<EOF
import urllib.parse
print(urllib.parse.quote("""$string"""))
EOF
}

search_google() {
    local query="$1"
    local encoded
    encoded=$(urlencode "$query")
    xdg-open "https://www.google.com/search?q=$encoded" >/dev/null 2>&1
    sleep 1
}

read -p "Enter your domain: " domain

google_dorks=(
    "site:$domain"
    "intitle:$domain"
    "inurl:$domain"
    "filetype:pdf $domain"
    "related:$domain"
    "allinurl:$domain"
    "allintext:$domain"
    "cache:$domain"
    "link:$domain"
    "info:$domain"
    "site:"$domain" ext:log | ext:txt | ext:conf | ext:cnf | ext:ini | ext:env | ext:sh | ext:bak | ext:backup | ext:swp | ext:old | ext:~ | ext:git | ext:svn | ext:htpasswd | ext:htaccess | ext:json"
    "inurl:conf | inurl:env | inurl:cgi | inurl:bin | inurl:etc | inurl:root | inurl:sql | inurl:backup | inurl:admin | inurl:php site:$domain"
    "inurl:q= | inurl:s= | inurl:search= | inurl:query= | inurl:keyword= | inurl:lang= inurl:& site:$domain"
    "inurl:url= | inurl:return= | inurl:next= | inurl:redirect= | inurl:redir= | inurl:ret= | inurl:r2= | inurl:page= inurl:& inurl:http site:$domain"
    "site:$domain intext:”choose file” | intext:"select file" | intext:"upload PDF" "
    "inurl:login | inurl:signin | intitle:login | intitle:signin | inurl:secure site:$domain"
    "site:$domain ext:txt | ext:pdf | ext:xml | ext:xls | ext:xlsx | ext:ppt | ext:pptx | ext:doc | ext:docx
intext:“confidential” | intext:“Not for Public Release” | intext:”internal use only” | intext:“do not distribute”"
    "site:openbugbounty.org inurl:reports intext:$domain"
    "site:pastebin.com "$domain""
)

for dork in "${google_dorks[@]}"; do
    search_google "$dork"
done
