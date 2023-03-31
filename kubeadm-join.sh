#!/usr/bin/env bash

kubeadm join kube-master-1:6443 --token 4cqntp.2bnv5k7552wokpyw \
	--discovery-token-ca-cert-hash sha256:9352f25d5b4142bf53c9e42a1eaad28280337fd611e050527a63a81f0b1f0e3d 