#!/bin/bash
. lib/helpers.sh

if ! [[ `which sudo` ]]; then
  echo "sudo needs to be installed for this to work"
fi

. bash/setup_bash.sh
. git/setup_git.sh
. vim/setup_vim.sh
. tmux/setup_tmux.sh
. gnupg/setup_gnupg.sh
. java/setup_java.sh
. docker/setup_docker.sh
. slack/setup_slack.sh
. misc_tools/setup_misc_tools.sh

print_with_color $GREEN "Done."

