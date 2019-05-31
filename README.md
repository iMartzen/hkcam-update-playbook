# Update your hkcam

I've made an [Ansible](http://docs.ansible.com/ansible/index.html) playbook to update your hkcam. 

## Checkout the hkcam project
[Matthias Hochgatterer](https://github.com/brutella) created this awesome project! Check it out on: 
- Website: [http://hochgatterer.me](http://hochgatterer.me)
- Github: [https://github.com/brutella/hkcam](https://github.com/brutella/hkcam)

## Instructions 
1. Download this repository to your Ansible Playbook directory 
2. Change directory to hkcam-update-playbook
3. Configure the hosts file [hosts file](../../blob/master/hosts) with your hostname/ipaddress 
4. Configure the variable in the [main.yml](../../blob/master/main.yml)
    - download_destination
5. Run the playbook with this command: 
```bash
ansible-playbook main.yml -i hosts --ask-pass
```
6. The prompt for password is the password of your raspberry 
7. The playbook is finished when you see this (i.e):
```bash
PLAY RECAP **********************************************************************
raspberrypi.local                : ok=3    changed=1    unreachable=0    failed=0
```
## What does this playbook? 
1. Copy a bash file to the raspberry server
3. Make an cronjob for checking for updates daily
2. Executes this bashfile; this is in the bashfile:
    1. It will download the latest version
    2. Unarchive the archive 
    3. Stop the hkcam 
    3. Changes the hkcam binary in /usr/bin
    4. Starts the hkcam
    5. Deletes the files in download destination, not the update.sh file.

## Multiple camera's 
If you have multiple cams just place there hostname in de host file. 
This playbook wil update them in once. 