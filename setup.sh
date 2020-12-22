
#
# curl https://raw.githubusercontent.com/wannabegeek/dotfiles/master/setup.sh | bash
#

REMOTE_URL=https://raw.githubusercontent.com/wannabegeek/dotfiles/master/
#DEST_DIR=${HOME}
DEST_DIR=$(pwd)
DEFAULT_DOMAIN="wannabegeek.com"

FULL_NAME=$(getent passwd $(whoami) | cut -d ':' -f 5)
EMAIL=$(whoami)@${DEFAULT_DOMAIN}

echo "Getting standard files"
for FILE in .bashrc \
            .vimrc \
            .tmux.conf \
            .vim/doc/tags \
            .vim/doc/solarized.txt \
            .vim/bitmaps/togglebg.png \
            .vim/colors/solarized.vim \
            .vim/autoload/togglebg.vim; do

    mkdir -p $(dirname ${DEST_DIR}/${FILE})
    echo ${FILE}
    curl -s ${REMOTE_URL}${FILE} -o ${DEST_DIR}/${FILE}
done

echo "Creating .gitconfig"
echo "[user]" > ${DEST_DIR}/.gitconfig
echo "   name = ${FULL_NAME}" >> ${DEST_DIR}/.gitconfig
echo "   email = ${EMAIL}" >> ${DEST_DIR}/.gitconfig
echo "[push]" >> ${DEST_DIR}/.gitconfig
echo "   default = simple" >> ${DEST_DIR}/.gitconfig

