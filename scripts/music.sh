status=$(spotify-now -e "Stopped")
if [[ $status == "Stopped" ]]; then
    echo "Stopped"
else
    case "$1" in
        status)
            echo $(playerctl --player=spotify,%any status)
        ;;
        title)
            echo $(playerctl --player=spotify,%any metadata --format "{{ title }}")
        ;;
        artist)
            echo $(playerctl --player=spotify,%any metadata --format "{{ artist }}")
        ;;
        album)
            echo $(playerctl --player=spotify metadata --format "{{album}}")
        ;;
        full)
            echo $(playerctl --player=spotify,%any metadata --format "{{ artist }} - {{ title }} from {{album}}")
        ;;
    esac
fi

: '
if [[ $status == "Stopped" ]]; then
    echo "Nothing Playing"
elif [[ $status == "Paused" ]]; then
    echo "Paused"
else
    echo $(playerctl --player=spotify,%any metadata --format "{{ artist }} - {{ title }}")
fi

spotifyOpen=`pidof spotify`
if [[ $spotifyOpen ]]; then
    playback=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'PlaybackStatus' | grep -o Paused`
    if [[ $playback ]]; then
        echo $playback
    else
        echo "playing"
    fi
else
    echo "spotify is not open"
fi
'