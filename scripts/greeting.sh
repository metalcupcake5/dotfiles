hour=$(date +%H)
if [[ $hour -lt 2 ]]; then
  echo "go to bed idiot"
elif [[ $hour -lt 12 ]]; then
  echo "good morning $(whoami)"
elif [[ $hour -lt 18 ]]; then
  echo "good afternoon $(whoami)"
else
  echo "good evening $(whoami)"
fi