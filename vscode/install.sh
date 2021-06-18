# this script installs vscode.
# originally I was going to write
# a script to install extensions too
# instead I discovered an extension 
# which syncs all files and extensions
# to github account. Use that better.

if [ $(snap list | grep -c "code") -eq 0 ];
then
    sudo snap install --classic code;
else
    echo "vscode is already installed... moving on"
fi

