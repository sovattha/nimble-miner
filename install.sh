#!/bin/bash
MINER_ADDRESS=$1  # Take the miner address as the first command-line argument

# Update and install dependencies
apt-get update && apt-get install -y tmux wget git python3-venv

# Install Go
wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz
rm go1.22.1.linux-amd64.tar.gz
echo "export PATH=\$PATH:/usr/local/go/bin" >> $HOME/.profile
source $HOME/.profile

# Clone and setup wallet-public
mkdir -p $HOME/nimble
cd $HOME/nimble
git clone https://github.com/nimble-technology/wallet-public.git
cd wallet-public
make install

# Clone and setup nimble-miner-public
cd $HOME/nimble
git clone https://github.com/nimble-technology/nimble-miner-public.git
cd nimble-miner-public
make install
source ./nimenv_localminers/bin/activate

# Start the application in a detached tmux session
tmux new-session -d -s miner-session "make run addr=$MINER_ADDRESS"

echo "All installations and setups are completed."
