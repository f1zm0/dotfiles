#!/bin/bash

echo "[+] Recovering corrupted zsh_history file ..."
mv ${HOME}/.zsh_history ${HOME}/.zsh_history_corrupted
strings -eS ${HOME}/.zsh_history_corrupted > ${HOME}/.zsh_history
fc -R ${HOME}/.zsh_history

rm ${HOME}/zsh_history_corrupted
echo "[+] Done. ~/.zsh_history file should be ok now"

