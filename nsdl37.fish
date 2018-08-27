function tfl -d "Connect to Transport for London"
  chromium-browser --temp-profile --proxy-server=socks5://localhost:9998 http://10.234.225.107:8080 &
  ssh tfl
end

if not pgrep -U (id -u) gpg-agent > /dev/null
  gpg-connect-agent /bye >/dev/null 2>&1
end
