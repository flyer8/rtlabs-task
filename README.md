The deployment was performed on Linux Mint 18.1 (Ubuntu 16.04) with Ansible v. 2.7.6, Docker version 17.09.0-ce installed.
Also docker-py >= 1.7.0 library must be installed.
```
pip install docker-py
```

For deploying service you should execute next commands:
```
git clone https://github.com/flyer8/rtlabs-task.git /opt/rtlabs-task
ansible-playbook -i /opt/rtlabs-task/inventory /opt/rtlabs-task/playbook.yml
```
