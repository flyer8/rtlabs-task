## Ansible playbook for deploying Nginx Docker container with generating sysinfo html page

The deployment was performed on Linux Mint 18.1 (Ubuntu 16.04) with Ansible v. 2.7.6; Docker v. 17.09.0-ce installed.

Also Docker SDK for Python must be installed. https://pypi.org/project/docker/
```
pip install docker
```

For deploying service on localhost you should execute following commands:
```
git clone https://github.com/flyer8/sysinfo-task.git /opt/sysinfo-task
ansible-playbook -i /opt/sysinfo-task/inventory /opt/sysinfo-task/playbook.yml
```
Then you can get an access to html page via browser using IP 127.0.0.1
