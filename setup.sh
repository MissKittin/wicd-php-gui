#!/bin/sh
rm README.md
chmod 755 shell.sh
chmod 755 wicd-config-injection.sh

cat << EOF > download-jquery.sh
#!/bin/sh
wget https://code.jquery.com/jquery-3.3.1.min.js
rm download-jquery.sh
exit 0
EOF

chmod 755 download-jquery.sh
echo 'Run download-jquery.sh'
rm setup.sh
exit 0
