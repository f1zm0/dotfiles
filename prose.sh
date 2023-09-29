vale () {
    echo "Linking vale config and custom vocabs ..."
    mkdir -p $HOME/styles
    stow --target=$HOME vale 

    # read styles defined in vale.yaml
    styles=$(grep -oP '(?<=BasedOnStyles = ).*' vale/.vale.ini | tr -d '[:space:]' | tr ',' '\n')

    # skip "Vale" style (built-in)
    styles=$(echo "$styles" | grep -v "Vale")

    # download and setup styles
    for style in $styles; do
        install_vale_style $style
    done
}

install_vale_style () {
    PACK_NAME=$1
    if [ -z "$PACK_NAME" ]; then
        echo "Invalid vale style name provided"
        exit 1
    fi

    if [ ! -d "$HOME/styles" ]; then
        mkdir -p $HOME/styles
    fi

    if [ -d "$HOME/styles/${PACK_NAME}" ]; then
        echo "Style ${PACK_NAME} already installed"
        return
    else 
        echo "Installing vale style ${PACK_NAME} ..."
        wget -q https://github.com/errata-ai/${PACK_NAME}/releases/latest/download/${PACK_NAME}.zip -O /tmp/${PACK_NAME}.zip \
            && unzip -q /tmp/${PACK_NAME}.zip -d $HOME/styles/${PACK_NAME} \
            && rm /tmp/${PACK_NAME}.zip
    fi
}

# check that stow is installed
if ! [ -x "$(command -v stow)" ]; then
  echo 'Error: stow is not installed.' >&2
  exit 1
fi

vale
