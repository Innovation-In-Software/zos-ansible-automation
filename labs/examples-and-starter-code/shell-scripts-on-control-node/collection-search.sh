#------------------------------------------------------------
# This script calls the ansible galaxy API to retrieve a list of 
# published collections and their highest version.  
# To filter results to match a keyword or substring, pipe the output to grep, e.g.:
# ./collection-search.sh | grep '^ibm.'
#------------------------------------------------------------ 

url='https://galaxy.ansible.com/api/v3/plugin/ansible/content/published/collections/index/?limit=100'
while [ -n "$url" ]; do
    json=$(curl -fsSL "$url")
    printf '%s\n' "$json" |
       jq -r '.data[] | "\(.namespace).\(.name)\t\(.highest_version.version)"'
   url=$(printf '%s\n' "$json" | jq -r '.links.next // empty')
   case "$url" in
        /*) url="https://galaxy.ansible.com$url" ;;
   esac
done