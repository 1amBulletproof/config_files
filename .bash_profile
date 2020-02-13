# ~/.bash_profile

echo ""
echo -n "Welcome to Unix on Mac OS X, "; whoami
echo ""
echo -n "Today is "; date "+%m-%d-%Y %I:%M:%S"
echo ""
# echo -n "Uptime: "; Uptime
# echo ""

if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
