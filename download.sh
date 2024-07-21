ZIP_LOCATION=~/Pictures/Wallpers/dynamic-gnome-wallpapers-ready

echo -e "${YELLOW}Downloading Files...${OFF}"
echo ""
status=$(curl -LJ https://cdn.manishk.dev/v2%2F$1.zip -o ./$1.zip --write-out %{http_code} --progress-bar)

# # If file doesn't exist, exit the script with an error.
if [[ "$status" -ne 200 ]] ; then
  # Theme doesn't exist
  echo ""
  echo -e "${RED}$1 theme doesn't exist. Make sure you spelled it correctly.${OFF}"
  rm -f $1.zip
  exit 0
fi
