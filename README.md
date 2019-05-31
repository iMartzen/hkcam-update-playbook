# Update your hkcam

I've made an [Ansible](http://docs.ansible.com/ansible/index.html) playbook to update your hkcam. 

## Checkout the hkcam project
[Matthias Hochgatterer](https://github.com/brutella) created this awesome project! Check it out on: 
- Website: [http://hochgatterer.me](http://hochgatterer.me)
- Github: [https://github.com/brutella/hkcam](https://github.com/brutella/hkcam)

## Instructions 
1. Configure the hosts file [hosts file](../../blob/master/hosts) with your hostname/ipaddress 
2. Configure the variables in the main.yml 
    - hkcam_version
    - download_destination
3. Run the playbook with this command: 
```bash
ansible-playbook main.yml -i hosts --ask-pass
```
4. The prompt for password is the password of your raspberry 
5. The playbook is finished when you see this:
```bash
PLAY RECAP **********************************************************************
raspberrypi.local                : ok=8    changed=7    unreachable=0    failed=0
```
## What does this playbook? 
1. Downloads the release 
2. Extract this release 
3. Stops the hkcam 
4. Changes the hkcam binary in /usr/bin
5. Starts the hkcam
6. Deletes the files in download destination 

## Multiple camera's 
If you have multiple cams just place there hostname in de host file. 
This playbook wil update them in once. 