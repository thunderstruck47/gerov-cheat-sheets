# Gerov's Linux Cheat Sheet

## openSSH

### Client

#### Basic

    ssh <user>@<remote> -P <port>                       # connect to remote
    scp -P <port> <path> <user>@<remote>:<path>         # copy to remote
    scp -P <port> <user>@<remote>:<path> <path>         # copy to host
    
#### Debian install with prep'd config:

    sudo apt install openvpn                            # install pkg
    tar -xzvf config-n-keys.tar.gz /etc/openvpn         # extract cfg
    sudo systemctl restart openvpn@config-name.service  # restart service
    sudo systemctl status openvpn@config-name.service   # check status


#### Last time logged in

    last
    last <user>
