# Invoked from ~/.bashrc as
#   source /home/train/epics-tools/setup/settings/settings.sh

# In the past, a file like this contained all the settings.
#
# To simplify maintenance, that has been split into
# several profile.d/*.sh
# which are all parsed here in alphabetical order

for i in /home/train/epics-tools/setup/settings/profile.d/*.sh
do
    source $i
done
