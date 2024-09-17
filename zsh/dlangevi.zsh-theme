BAR=$(echo 🍏🍎🍐🍊🍋🍌🍉🍇🍓🫐🍈🍒🍑🥭🍍🥥🥝 | grep -o . | shuf -n1)

function theme_precmd {
  PRE="%F{033}%c%f"
  # PRE+=' $(git_prompt_info)'
  PRE+=' %F{129}$(kubectl config current-context)%f $BAR '
  print -rP "$PRE"
}

add-zsh-hook precmd  theme_precmd

PROMPT="%(?.%F{green}.%F{red})>%f "

# The git prompt will include the current branch you are on
# First set the color we want for the branch
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[059]%}"
# after the branch is printed reset the prompt color
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
# i
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""
