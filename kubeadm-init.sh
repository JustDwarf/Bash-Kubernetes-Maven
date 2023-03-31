#!/usr/bin/env bash

sudo kubeadm init \
	--apiserver-advertise-address=192.168.10.10 \
  --pod-network-cidr=10.10.0.0/16

