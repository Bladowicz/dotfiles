PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/gbaranowski/eclipse
    function _update_ps1() {
       export PS1="$(~/powerline-shell.py $? 2> /dev/null)"
    }

    export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
