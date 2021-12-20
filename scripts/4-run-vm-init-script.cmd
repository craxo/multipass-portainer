@ECHO OFF
ECHO Run init command in the VM.
multipass exec -v portainer -- sudo bash -c "cd shared && chmod +x init.sh && sh init.sh"
EXIT