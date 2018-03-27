# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

which neofetch &> /dev/null
if [ $? -eq 0 ]; then
    neofetch --disable packages
    echo
fi

