docker run -d --rm --name rtlabs-app -p 80:80 -p 443:443 -P flyer8/rtlabs-app

The below requirements are needed on the host that executes this module.

python >= 2.6
docker-py >= 1.7.0

pip install docker-py

ansible-playbook -i inventory playbook.yml

./sysinfo.sh index.html || true

bash -c "bash sysinfo.sh index.html || true"

docker exec -it rtlabs-app /bin/bash /var/www/html/sysinfo2.sh /var/www/html/index.html

ansible-playbook -i /opt/rtlabs-task/inventory playbook.yml
