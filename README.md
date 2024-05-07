# Nimble Node Installation Guide

Welcome to the installation guide for setting up a Nimble node. This document will guide you through the process of using the `install.sh` script to establish a fully operational node for the Nimble cryptocurrency network.

## Overview

The `install.sh` script automates the setup of a Nimble node on a Unix-like system. It handles the installation of all required dependencies, sets up the necessary environment, and configures the Nimble node to run inside a tmux session.

## Prerequisites

Before proceeding, ensure your system meets the following prerequisites:

- A Cloud GPU running Ubuntu 22.04
- Root or sudo privileges
- Internet connection

## Installation

To install and run your Nimble node, execute the following command in your terminal. This command will download the `install.sh` script directly from GitHub and execute it, setting up everything needed to start your Nimble node.

Using curl

```bash
curl -sSL https://raw.githubusercontent.com/sovattha/nimble-miner/main/install.sh | bash -s -- [Your Miner Address]
```

Using wget

```bash
wget -qO- https://raw.githubusercontent.com/sovattha/nimble-miner/main/install.sh | bash -s -- [Your Miner Address]
```

Replace [Your Miner Address] with your actual Nimble miner address.

# Security Considerations

Executing scripts directly from the internet with curl or wget piped to bash can pose security risks, especially if the script's source is compromised. Before executing the command above, you are strongly encouraged to:

- Verify the contents of the script.
- Ensure that you trust the source of the script.

# Troubleshooting

Should you encounter any issues during the installation, consider downloading the script first, reviewing its content, and then executing it locally.

# Support

For additional support or inquiries, please open an issue in the repository or contact me on LinkedIn.
