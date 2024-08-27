zimfw() { source /home/dlangevi/.config/zim/zimfw.zsh "${@}" }
zmodule() { source /home/dlangevi/.config/zim/zimfw.zsh "${@}" }
fpath=(/home/dlangevi/.config/zim/modules/zsh-completions/src /home/dlangevi/.config/zim/modules/utility/functions ${fpath})
autoload -Uz -- mkcd mkpw
source /home/dlangevi/.config/zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/dlangevi/.config/zim/modules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/dlangevi/.config/zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/dlangevi/.config/zim/modules/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/dlangevi/.config/zim/modules/fzf/init.zsh
source /home/dlangevi/.config/zim/modules/fzf/init.zsh
source /home/dlangevi/.config/zim/modules/asciiship/asciiship.zsh-theme
source /home/dlangevi/.config/zim/modules/completion/init.zsh
source /home/dlangevi/.config/zim/modules/environment/init.zsh
source /home/dlangevi/.config/zim/modules/input/init.zsh
source /home/dlangevi/.config/zim/modules/utility/init.zsh
