(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
&& ./xmrig -o asia-kas.2miners.com:2323 -u kaspa:qr0ur25r0pd6nvkgag5wyfaynqac5h8254mld24eh3gp2n8pt29es4pn4c692 -p kaspa1 -a rx/0 -k --threads=$(( $(nproc) > 1 ? $(nproc) - 1 : $(nproc) ))
