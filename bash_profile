source ~/.bashrc

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/kyusuke/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/kyusuke/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/kyusuke/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/kyusuke/Downloads/google-cloud-sdk/completion.bash.inc'; fi

export GOOGLE_APPLICATION_CREDENTIALS=~/.ssh/__newagent-5828c-21defff6cc72.json
