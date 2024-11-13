input=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk 'NR==1{print $2}')

output=$(bc <<< "scale=0; $input*100/1")

echo "$output"
