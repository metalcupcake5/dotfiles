~/projects/eww/target/release/eww close-all
if [[ "$1" == "stop" ]]; then
    echo "stopped"
else
    echo "starting"
    ~/projects/eww/target/release/eww open background
    ~/projects/eww/target/release/eww open menu
    echo "started"
fi
