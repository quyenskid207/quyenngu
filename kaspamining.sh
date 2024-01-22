(grep -q "vm.nr_hugepages" /etc/sysctl.conf || (echo "vm.nr_hugepages=$((1168+$(nproc)))" | sudo tee -a /etc/sysctl.conf)) && sudo sysctl -w vm.nr_hugepages=$((1168+$(nproc))) \
&& ./xmrig -o rx.unmineable.com:3333 -u KAS:kaspa:qr0ur25r0pd6nvkgag5wyfaynqac5h8254mld24eh3gp2n8pt29es4pn4c692.kaspa1 -p x -a rx/0 -k --threads=$(( $(nproc) > 1 ? $(nproc) - 1 : $(nproc) ))
