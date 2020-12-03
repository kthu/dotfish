function az -d "Run azure-cli tool using docker"
   if test ! -d {$XDG_DATA_HOME}/docker-az
      echo "\${XDG_DATA_HOME}/docker-az does not exist. Aborting"
      exit 1
   end

   sudo docker run -u (id -u):(id -g) -v {$XDG_DATA_HOME}/docker-az:/home/az -e HOME=/home/az --rm -it mcr.microsoft.com/azure-cli az $argv
end
