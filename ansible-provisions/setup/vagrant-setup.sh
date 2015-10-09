#/bin/sh

working_directory=$(pwd)
host_file="/tmp/ansible-hosts"
/usr/tallyho/ansible-provisions/setup/vagrant-local.sh > $host_file
cd /usr/tallyho/ansible-provisions
./provision $host_file
cd $working_directory
rm $host_file
