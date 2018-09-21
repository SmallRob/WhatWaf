#!/bin/bash

chmod +x whatwaf.py
mkdir /usr/local/etc/whataf
cp -pRu ./* /usr/local/etc/whataf
cat<<EOT >> /usr/local/bin/whatwaf
#!/bin/bash
# this is the execution script for whatWaf
# created by whatwaf install.sh on $(date +'%m-%d-%Y %H:%M:%S')
cd /usr/local/etc/whataf
exec python whatwaf.py $@
EOT
chmod +x /usr/local/bin/whatwaf
pip install -r requirements.txt