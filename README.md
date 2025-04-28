# dockaya :)

The entire dockerfile will be uploaded shortly.

# Bash Commands

dockaya - run the docker container
dockaya-exec - enter docker shell

## Prerequisites

This build is only intended to run within a littlejo/aya docker container.

## Build & Run

RUST_LOG=info cargo run
 
# Bashrc Config

alias dockaya="docker run --rm -it --name aya \
                    --privileged \
                    --network host \
                    -v /:/host \
                    -v /sys/kernel/debug:/sys/kernel/debug \
                    -w /host/root/dockaya/dockaya \
                    littlejo/aya:1.0.1 bash -c 'apt-get update && apt-get install git && cd /host/root/dockaya/dockaya && git pull https://github.com/filicodes/dockaya.git && bash'
"

alias dockaya-exec="docker exec -it aya sh"
