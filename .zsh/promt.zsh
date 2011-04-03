if [[ -n $SSH_CONNECTION ]]; then
    PS1=$'%{\e[1;35m%}%m %#%{\e[0m%} '
else
    PS1=$'%{\e[1;35m%}%#%{\e[0m%} '
fi
RPROMPT=$'%{\e[1;35m%}%~%{\e[0m%} '
