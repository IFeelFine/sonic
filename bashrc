#!/bin/bash
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
#                                                           #
#  888888 8888888              88 8888888                   #
#    88   88                   88 88    oo                  #
#    88   88                   88 88                        #
#    88   88888 .d8b.   .d8b.  88 88888 88 8888b.  .d8b.    #
#    88   88   d8P Y8b d8P Y8b 88 88    88 88  8b d8P Y8b   #
#    88   88   8888888 8888888 88 88    88 88  88 8888888   #
#    88   88   Y8b.    Y8b.    88 88    88 88  88 Y8b.      #
#  888888 88    ºY888P  ºY888P 88 88    88 88  88  ºY888P   #
#                           (c) 2015-2024 I Feel Fine, Inc. #
#+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++#
# .bashrc
# Github Repo: <ifeelfine/sonic>
# -------------
# Description: 
# Bash init file

# Set Aliases
# -----------
# helm
# ----
h=helm
hi='helm install'
hin='helm install'
hl='helm list'
hla='helm list -A'
hra='helm repo add'
hru='helm repo update'
hse='helm search'
hun='helm uninstall'
hup='helm upgrade'

# kubectl
# -------
k=kubectl
kaf='kubectl apply -f'
kc='kubectl create'
kca='_kca(){ kubectl "$@" --all-namespaces;  unset -f _kca; }; _kca'
kccc='kubectl config current-context'
kcdc='kubectl config delete-context'
kcgc='kubectl config get-contexts'
kcn='kubectl config set-context --current --namespace'
kcp='kubectl cp'
kcsc='kubectl config set-context'
kcuc='kubectl config use-context'
kdcj='kubectl describe cronjob'
kdcm='kubectl describe configmap'
kdd='kubectl describe deployment'
kdds='kubectl describe daemonset'
kdel='kubectl delete'
kdelcj='kubectl delete cronjob'
kdelcm='kubectl delete configmap'
kdeld='kubectl delete deployment'
kdelds='kubectl delete daemonset'
kdelf='kubectl delete -f'
kdeli='kubectl delete ingress'
kdelj='kubectl delete job'
kdelno='kubectl delete node'
kdelns='kubectl delete namespace'
kdelp='kubectl delete pods'
kdelpvc='kubectl delete pvc'
kdels='kubectl delete svc'
kdelsa='kubectl delete sa'
kdelsec='kubectl delete secret'
kdelss='kubectl delete statefulset'
kdesc='kubectl describe'
kdi='kubectl describe ingress'
kdj='kubectl describe job'
kdno='kubectl describe node'
kdns='kubectl describe namespace'
kdp='kubectl describe pods'
kdpvc='kubectl describe pvc'
kdrs='kubectl describe replicaset'
kds='kubectl describe svc'
kdsa='kubectl describe sa'
kdsec='kubectl describe secret'
kdss='kubectl describe statefulset'
kecj='kubectl edit cronjob'
kecm='kubectl edit configmap'
ked='kubectl edit deployment'
keds='kubectl edit daemonset'
kei='kubectl edit ingress'
kej='kubectl edit job'
keno='kubectl edit node'
kens='kubectl edit namespace'
kep='kubectl edit pods'
kepvc='kubectl edit pvc'
kers='kubectl edit replicaset'
kes='kubectl edit svc'
kess='kubectl edit statefulset'
keti='kubectl exec -t -i'
kg='kubectl get'
kga='kubectl get all'
kgaa='kubectl get all --all-namespaces'
kgcj='kubectl get cronjob'
kgcm='kubectl get configmaps'
kgcma='kubectl get configmaps --all-namespaces'
kgd='kubectl get deployment'
kgda='kubectl get deployment --all-namespaces'
kgds='kubectl get daemonset'
kgdsa='kubectl get daemonset --all-namespaces'
kgdsw='kgds --watch'
kgdw='kgd --watch'
kgdwide='kgd -o wide'
kgi='kubectl get ingress'
kgia='kubectl get ingress --all-namespaces'
kgj='kubectl get job'
kgno='kubectl get nodes'
kgns='kubectl get namespaces'
kgp='kubectl get pods'
kgpa='kubectl get pods --all-namespaces'
kgpall='kubectl get pods --all-namespaces -o wide'
kgpl='kgp -l'
kgpn='kgp -n'
kgpvc='kubectl get pvc'
kgpvca='kubectl get pvc --all-namespaces'
kgpvcw='kgpvc --watch'
kgpw='kgp --watch'
kgpwide='kgp -o wide'
kgrs='kubectl get replicaset'
kgs='kubectl get svc'
kgsa='kubectl get svc --all-namespaces'
kgsec='kubectl get secret'
kgseca='kubectl get secret --all-namespaces'
kgss='kubectl get statefulset'
kgssa='kubectl get statefulset --all-namespaces'
kgssw='kgss --watch'
kgsswide='kgss -o wide'
kgsw='kgs --watch'
kgswide='kgs -o wide'
kk='kubectl krew'
kl='kubectl logs'
kl1h='kubectl logs --since 1h'
kl1m='kubectl logs --since 1m'
kl1s='kubectl logs --since 1s'
klf='kubectl logs -f'
klf1h='kubectl logs --since 1h -f'
klf1m='kubectl logs --since 1m -f'
klf1s='kubectl logs --since 1s -f'
kpf='kubectl port-forward'
krh='kubectl rollout history'
krsd='kubectl rollout status deployment'
krsss='kubectl rollout status statefulset'
kru='kubectl rollout undo'
ksd='kubectl scale deployment'
ksss='kubectl scale statefulset'

# Set autocompletion
source <(op completion bash)      # 1Password-cli
source <(kubectl completion zsh)  # kubectl
source <(helm completion zsh)     # Helm
source /root/bin/oci-cli-env      # OCI-cli
source /root/bin/oci-cli-complete # OCI-cli