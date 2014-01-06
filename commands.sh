#Delete CLRF (Windows Carriage Return and new Line) from a file to be usable in Linux

tr -d '\r' < in_file > out_file

#Command to delete all .svn files recursively

find . -name .svn | gawk '{print "rm -rf " $0}' | bash

#Capturing Network Traffic

tcpdump -i eth0 -w /tmp/xxx.dmp -s 1500

#The file xxx.dmp can then be open with wireshark.



#The following is not mine. I found it on the WEB

#Adding svn files recursively

svn status | grep "^\?" | awk '{print $2}' | xargs svn add


#get all open ports and processes associated to them:

sudo lsof -i -P


#Get the Certificate from a SSL HTTPS site

openssl s_client -showcerts -connect HOST:443 >/tmp/ukash.cert

#Importing the certificate to java

keytool -import -alias joe -file server.crt -keystore /home/user/jdk1.5.0_06/jre/lib/security/cacerts

#Remember the keystore password is by default "changeit"


#To look at what process is using a particular port, you just run the following

lsof -i tcp:8443 

#To setup a git daemon on your local repo. Execute this from the root of the your project repo (or a folder above it) 

git daemon --reuseaddr --base-path=. --export-all --verbose --enable=receive-pack 

#Then from another machine or the same you can clone it: 

git clone git://localhost:9418/ something 

#Obtain a access token for Github API Oauth (using client_id and client_secret of a registered application): 

curl -i -X POST https://api.github.com/authorizations -d '{"client_id":"xxxxxx", "client_secret":"xxxxxx"}' -u calo81 Git grep and replace words in your git repo: git grep -l 'original_text' | xargs sed -i '' 's/original_text/new_text/g'