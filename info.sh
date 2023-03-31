Your Kubernetes control-plane has initialized successfully!

To start using your cluster, you need to run the following as a regular user:

  mkdir -p $HOME/.kube
  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
  sudo chown $(id -u):$(id -g) $HOME/.kube/config

Alternatively, if you are the root user, you can run:

  export KUBECONFIG=/etc/kubernetes/admin.conf

You should now deploy a pod network to the cluster.
Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
  https://kubernetes.io/docs/concepts/cluster-administration/addons/

You can now join any number of control-plane nodes by copying certificate authorities
and service account keys on each node and then running the following as root:

  kubeadm join kube-master-1:6443 --token 4cqntp.2bnv5k7552wokpyw \
	--discovery-token-ca-cert-hash sha256:9352f25d5b4142bf53c9e42a1eaad28280337fd611e050527a63a81f0b1f0e3d \
	--control-plane 

Then you can join any number of worker nodes by running the following on each as root:

kubeadm join kube-master-1:6443 --token 4cqntp.2bnv5k7552wokpyw \
	--discovery-token-ca-cert-hash sha256:9352f25d5b4142bf53c9e42a1eaad28280337fd611e050527a63a81f0b1f0e3d 
