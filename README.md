# dockaya :)

The entire dockerfile will be uploaded shortly.

# Bash Commands sss

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
                    -e GITHUB_TOKEN=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 \
                    -w /host/root/dockaya/dockaya \
                    littlejo/aya:1.0.1 bash -c 'apt-get update && apt-get install git && git init && git pull https://github.com/filicodes/dockaya.git && bash'
"

alias dockaya-exec="docker exec -it aya sh"
