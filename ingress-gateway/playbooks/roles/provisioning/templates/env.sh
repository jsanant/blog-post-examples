export IP="{{ ansible_eth1.ipv4.address }}"
export CONSUL_HTTP_ADDR="http://{{ ansible_eth1.ipv4.address }}:8500"