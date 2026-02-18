#!/bin/bash

set -e

PUB_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJYNSeuLX5KAj9nO47PwRBgE1MDq4veuMIOG6gboZ4dW dneksdonsdf@gmail.com"

mkdir -p ~/.ssh
chmod 700 ~/.ssh

# 如果没有则添加
grep -qxF "$PUB_KEY" ~/.ssh/authorized_keys 2>/dev/null || echo "$PUB_KEY" >> ~/.ssh/authorized_keys

chmod 600 ~/.ssh/authorized_keys

echo "SSH public key installed successfully."
