#!/bin/sh
[ -e .git ] && rm -r -f .git

echo 'rm README.md'
rm README.md

echo 'rm LICENSE'
rm LICENSE

echo 'rm *.png'
rm bright_preview.png
rm default_preview.png

echo 'shell.sh'
chmod 755 shell.sh

echo 'wicd-config-injection.sh'
chmod 755 wicd-config-injection.sh

echo; echo -n 'download jquery? [y/n] '
read answer
while true; do
	jqueryerror=false
	if [ "$answer" = 'y' ]; then
		echo; echo 'jquery-3.3.1.min.js'
		wget https://code.jquery.com/jquery-3.3.1.min.js > /dev/null 2>&1 || jqueryerror=true
		if $jqueryerror; then
			echo; echo -n 'download error, create download script? [y/n] '
			read answerb
			if [ "$answerb" = 'y' ]; then
				echo '#!/bin/sh' > download-jquery.sh
				echo 'error=false' >> download-jquery.sh
				echo 'echo "jquery-3.3.1.min.js"' >> download-jquery.sh
				echo 'wget https://code.jquery.com/jquery-3.3.1.min.js > /dev/null 2>&1 || error=true' >> download-jquery.sh
				echo '$error || rm download-jquery.sh' >> download-jquery.sh
				echo 'exit 0' >> download-jquery.sh
				chmod 755 download-jquery.sh
				break
			fi
			[ "$answerb" = 'n' ] && break
		fi
		break
	fi
	[ "$answer" = 'n' ] && break
done

echo; echo 'setup.sh'
rm setup.sh
exit 0
