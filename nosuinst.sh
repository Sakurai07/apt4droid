echo "Where is the bin for your terminal? "
read bin
echo "where is the lib for your terminal? "
read lib
echo "where is the etc for your terminal? "
read etc
echo "where is the invlude for your terminal? "
read include
echo -ne '                          (0%)\r'
echo "Transfering APT..."
cd bin
cp apt apt-get apt-cache apt-config apt-get apt-key apt-mark $bin
cd ..
cd lib
cp -r libapt-pkg.so libapt-private.so apt $lib
cd ..
cd etc
cp -r apt profile.d tls bash.bashrc motd $etc
cd ..
cd include/
cp -r apt-pkg $include
cd ..
echo -ne '#############             (66%)\r'
echo "Transfering dpkg..."
cd var/lib/
cp -r dpkg $lib
cd ..
cd ..
cd bin
cp dpkg dpkg-deb dpkg-divert dpkg-fsys-usrunmess dpkg-query dpkg-realpath dpkg-split dpkg-trigger $bin
echo -ne '#######################   (100%)\r'
echo -ne 'installed'
