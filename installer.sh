#!/bin/bash
# Installer script for custom OpenPilot fork

# Step 1: 删除旧的 OpenPilot 安装
echo "Removing existing OpenPilot installation..."
rm -rf /data/openpilot

# Step 2: 克隆自定义仓库
echo "Cloning repository..."
git clone https://github.com/Ahyaowei/dashing.git /data/openpilot

# Step 3: 切换到特定分支或 Release
cd /data/openpilot
git checkout tags/v0.9.8.11 -b v0.9.8.11

# Step 4: 重启服务
echo "Installation complete. Rebooting..."
sudo reboot
