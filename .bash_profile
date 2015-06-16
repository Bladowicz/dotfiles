. ~/.bashrc
shopt -s histappend histreedit histverify
shopt -s no_empty_cmd_completion # bash>=2.04 only
export HISTTIMEFORMAT='%F %T '
export HISTFILESIZE=5000
export HISTSIZE=5000
PROMPT_COMMAND='history -n;history -a'
HISTCONTROL=ignoreboth
shopt -s cdspell


function prompt {
  local BLUE="\[\033[0;34m\]"
  local DARK_BLUE="\[\033[1;34m\]"
  local RED="\[\033[0;31m\]"
  local DARK_RED="\[\033[1;31m\]"
  local NO_COLOR="\[\033[0m\]"
  case $TERM in
    xterm*|rxvt*)
      TITLEBAR='\[\033]0;\u@\h:\w\007\]'
      ;;
    *)
      TITLEBAR=""
      ;;
  esac
  PS1="\u@\h [\t]> "
  PS1="${TITLEBAR}\
  $BLUE\u@\h $RED[\t]>$NO_COLOR "
  PS2='continue-> '
  PS4='$0.$LINENO+ '
}




#~/.bash_aliases_out


# Whenever displaying the prompt, write the previous line to disk:
#PROMPT_COMMAND=history -a

#Use GREP color features by default: This will highlight the ma words / regexes
#export GREP_OPTIONS='-color=auto'
export GREP_COLOR=1
#export GREP_COLOR=1

#PROMPT_COMMAND='PS1="\[\033[0;33m\]\`if [[  `pwd`  == */mnt/mfs/pprofil/calc/* ]] ; then echo  ["CALC"]; elif  [[  `pwd`  == */mnt/mfs/pprofil/source_data/* ]] ; then echo  ["SOURCE"]; fi\`\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\h: \`if [[  `pwd`  == */mnt/mfs/pprofil/calc/* ]] || [[  `pwd`  == */mnt/mfs/pprofil/source_data/* ]] ; then echo  `pwd` | cut -d"/" -f6-; else  echo  "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
PROMPT_COMMAND='PS1="\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`#\[\033[0;33m\]\`if [[  `pwd`  == */mnt/mfs/pprofil/calc/* ]] ; then echo  ["CALC"]; elif  [[  `pwd`  == */mnt/mfs/pprofil/source_data/* ]] ; then echo  ["SOURCE"]; fi\`\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\h: \`if [[  `pwd`  == */mnt/mfs/pprofil/calc/* ]] || [[  `pwd`  == */mnt/mfs/pprofil/source_data/* ]] ; then echo  `pwd` | cut -d"/" -f6-; else  echo  "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'
#PROMPT_COMMAND='PS1="\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`#\[\033[0;33m\]\``if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\h: \`if [[  `pwd`  == */mnt/mfs/pprofil/calc/* ]] || [[  `pwd`  == */mnt/mfs/pprofil/source_data/* ]] ; then echo  `pwd` | cut -d"/" -f6-; else  echo  "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'

####
#export PATH=/usr/local/python27/bin:$PATH
#export PATH=/home/gbaranowski/Skrypty/MyPath:$PATH
export PATH=/home/gbaranowski/MyLibs:$PATH
