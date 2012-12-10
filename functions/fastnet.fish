function fastnet -d "Remove 100ms delay on eth0"
   sudo tc qdisc del dev lo root netem delay 100ms
end
