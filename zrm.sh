

# 1: check, if zsh installed 
#which zsh 


if type zsh >/dev/null 2>&1
then 
	which zsh
else 
	sudo pacman -S zsh	
fi


# 2: check, if  tmux installed 
#which zsh 
 
if type tmux >/dev/null 2>&1
then 
	which tmux
else 
	sudo pacman -S tmux	
fi
 

# 3: check, if  curl = true  then install oh my zsh 
#https://ohmyz.sh/
 
if type curl >/dev/null 2>&1
then 
	which curl
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

else 
	sudo pacman -S curl
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	
fi


#4: install zsh-autosuugestions
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

sed -i -e '/plugins=(/s/$/ zsh-autosuggestions/' ~/.zshrc

source ~/.zshrc