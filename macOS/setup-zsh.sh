# This script will install and configure zsh along side prezto configuration framework

prezto_url=git@github.com:iliapolo/prezto.git

echo "Cloning preztro from ${prezto_url}"
git clone --recursive ${prezto_url}

echo "Creating symbolic links"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

echo "Done, open a new terminal window to see the affects"
