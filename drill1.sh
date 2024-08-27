cd hello
mkdir one five
cd -/hello/five
mkdir six
cd -/hello/five/six
touch c.txt && mkdir seven
cd -/hello/five/six/seven
toucherroe.log
cd -/hello/one
touch a.txt b.txt &&mkdir two
cd ~/hello/one/two
touch d.txt && mkdir three
cd ~/hello/one/two/three
touch e.txt && mkdir four
cd ~/hello/one/two/three/four
touch access.log
cd
tree hello
find hello -name *.log -type f  -exec rm {} 
cd ~/hello/one
nano a.txt
unix is a family of multitasking,mutiuser
ctrl + x
y
enter
cd ~/hello
rm -R five
mv one uno
cd ~/hello/uno
mv a.txt two
cd