SYSTEMCTL=/usr/bin/systemctl
PUPPET_SERVICE="puppet.service"

if [ $1 -gt 1 ]
then
    if "${SYSTEMCTL}" is-enabled "${PUPPET_SERVICE}" > /dev/null 2>&1
    then
        "${SYSTEMCTL}" try-restart "${PUPPET_SERVICE}" > /dev/null 2>&1 || :
    fi
fi
