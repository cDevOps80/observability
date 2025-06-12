
git pull

ansible-playbook -i 13.221.117.252,  -e ansible_user=centos -e ansible_password=DevOps321 -e tool_name=${1} setup.yaml