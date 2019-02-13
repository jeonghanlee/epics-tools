# In the past, a file like this contained all the settings.
#
# To simplify maintenance, that has been split into
# several profile.d/*.sh
# which are all parsed here in alphabetical order
for i in profile.d/*.sh
do
    cp $i /etc/profile.d/
done
