#!/bin/bash

# Update package lists
sudo apt-get update

# Install wget and curl if not already installed
sudo apt-get install -y wget curl

# Function to install Skype
install_skype() {
    echo "Installing Skype..."
    wget https://go.skype.com/skypeforlinux-64.deb -O skypeforlinux-64.deb
    sudo dpkg -i skypeforlinux-64.deb
    sudo apt-get install -f -y
    rm skypeforlinux-64.deb
    echo "Skype installed successfully!"
}

# Function to install Microsoft Teams
install_teams() {
    echo "Installing Microsoft Teams..."
    wget https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.4.00.26453_amd64.deb -O teams.deb
    sudo dpkg -i teams.deb
    sudo apt-get install -f -y
    rm teams.deb
    echo "Microsoft Teams installed successfully!"
}

# Function to install VMware Workstation
install_vmware() {
    echo "Installing VMware Workstation..."
    wget https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-16.2.4-20089737.x86_64.bundle -O vmware.bundle
    chmod +x vmware.bundle
    sudo ./vmware.bundle
    rm vmware.bundle
    echo "VMware Workstation installed successfully!"
}

# Install Skype
install_skype

# Install Microsoft Teams
install_teams

# Install VMware Workstation
install_vmware

# Print completion message
echo "All essential software has been installed successfully!"
