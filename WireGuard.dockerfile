FROM archlinux:latest
RUN mkdir -p /usr/lib/modules/
RUN mkdir -p /opt/wg/

#You will need to enter in your client's public key here.
#The following is just as an example, you MUST change it.
ENV wgpubkey "F/SoO53N66QRhd1Ofd/Hk1ZkTUAe+pvSSKjXKBdhjDI="

#You will need to enter in your client's CIDR right here.
#The following is an examle that allows traffic to ANY IP
#Meaning client will have access to any IP visible to WG.
ENV IPCIDR "0.0.0.0/0" 

#Optionally change these, but you shouldn't need to do so
ENV CONFPATHTMP /tmp/wg.conf
ENV CONFPATHFINAL /opt/wg/wg.conf
ENV paccmd "pacman -Syyu --noconfirm"
ENV pkgs "wireguard-dkms wireguard-tools"

#Install all necessary dependencies with Arch's `pacman`!
RUN $paccmd $pkgs

#Generate WireGuard Configuration, auto generate keypair.
RUN echo "[Interface]" >> $CONFPATHTMP
RUN export PVTKEY="$(wg genkey)" ; export PUBKEY="$(echo $PVTKEY | wg pubkey)" ; echo "PrivateKey = $PVTKEY" >> $CONFPATHTMP ; echo $PUBKEY >> /opt/wg/pub.key
RUN echo "[Peer]" >> $CONFPATHTMP ; echo "PublicKey = $wgpubkey" >> $CONFPATHTMP 
RUN echo "AllowedIPs = $IPCIDR"

RUN mv /tmp/wg.conf /opt/wg

ENTRYPOINT ["wg-quick", "up", "/opt/wg/wg.conf"]

