function slownet -d "Add 100ms delay to eth0"
   sudo tc qdisc add dev lo root netem delay 100ms
end
