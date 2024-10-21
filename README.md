## Install Ansible

```bash
sudo apt update && sudo apt install -y python3-pip
python3 -m pip install --user ansible --break-system-packages
```

## Update Ansible

```bash
python3 -m pip install --upgrade --user ansible --break-system-packages
```

## Add Ansible to PATH

```bash
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc
source ~/.bashrc
```