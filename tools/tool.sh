
git pull

ansible-playbook -i ${1}-internal.chaithanya.cloud,  -e ansible_user=centos -e ansible_password=DevOps321 -e tool_name=${1} setup.yaml