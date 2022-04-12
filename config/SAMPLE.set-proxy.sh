#!/bin/bash

# Create a copy of this file
# Rename the copy to `set-proxy.sh`

# Enter your username and password to the proxy
# Enter your proxy host and proxy port
export http_proxy="http://<username>:<password>@<proxy-host>:<proxy-port>"
export https_proxy=$http_proxy
