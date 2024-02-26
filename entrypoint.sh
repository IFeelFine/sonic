#!/bin/sh
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
# .gitignore
# Github Repo: <ifeelfine/sonic>
# -------------
# Description: 
# Main container entry point. Takes *mandatory* arguments and
# updates the kubeconfig file. Once done, the container
# sleeps for a day.

# Install current versions of OCI-cli and 1Password-CLI
    curl -LO https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh \
&&  chmod +x install.sh \
&&  ./install.sh --accept-all-defaults --exec-dir /usr/local/bin \
&&  rm -f install.sh

echo https://downloads.1password.com/linux/alpinelinux/stable/ >> /etc/apk/repositories \
&& wget https://downloads.1password.com/linux/keys/alpinelinux/support@1password.com-61ddfc31.rsa.pub -P /etc/apk/keys \
&& apk update && apk add 1password-cli
	
# Read secrets from mounted volume
CLUSTER_ADDR=$(cat /mnt/secrets/server)
CLUSTER_NAME=$(cat /mnt/secrets/cluster)
CLUSTER_OCID=$(cat /mnt/secrets/ocid)

# Replace placeholders with secret values
sed -i "s|CLUSTER_ADDR|${CLUSTER_ADDR}|" /root/.kube/config.yaml
sed -i "s|CLUSTER_NAME|${CLUSTER_NAME}|" /root/.kube/config.yaml
sed -i "s|CLUSTER_OCID|${CLUSTER_OCID}|" /root/.kube/config.yaml

# Let the container sit and wait for someone to attach
exec tail -f /dev/null