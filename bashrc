# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc


# Terminal setup
# Note: bash has different command completion settings
bind 'set show-all-if-ambiguous on'
bind 'set completion-ignore-case on'

# Colors for prompt
RED="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
MAGENTA="\[\033[1;35m\]"
CYAN="\[\033[1;36m\]"
WHITE="\[\033[0;37m\]"
ORANGE="\[\033[1;214m\]"
END="\[\033[0m\]"

# Git branch function
git_current_branch() {
    local branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
    if [ $? -eq 0 ]; then
        echo "{$branch}"
    fi
}

# Prompt setting
PS1="${YELLOW}\! ${CYAN}\t ${GREEN}\u${BLUE}@\h ${YELLOW}\$(git_current_branch) ${CYAN}WW\$(date +%V) ${MAGENTA}\$(date +%D)\n${RED}\w\n${GREEN}\$${WHITE} ${END}"

# ENV variables for colored directories
export LS_COLORS="di=103;34:fi=00"

# Unset color variables to keep environment clean
unset RED GREEN YELLOW BLUE MAGENTA CYAN WHITE ORANGE END

# Aliases
alias gs='branch=$(git branch --show-current); staged=$(git diff --staged --numstat | wc -l | sed "s/ //g"); modified=$(git diff --numstat | wc -l | sed "s/ //g"); untracked=$(git ls-files --others --exclude-standard | wc -l | sed "s/ //g"); ahead=$(git status -sb | grep -o "\[ahead [0-9]*\]" | grep -o "[0-9]*" || echo "0"); behind=$(git status -sb | grep -o "\[behind [0-9]*\]" | grep -o "[0-9]*" || echo "0"); stashed=$(git stash list | wc -l | sed "s/ //g"); echo "Branch: $branch" && echo "📦 Staged: $staged" && echo "📝 Modified: $modified" && echo "❓ Untracked: $untracked" && echo "⬆️  Ahead: $ahead" && echo "⬇️  Behind: $behind" && echo "📋 Stashed: $stashed"'
alias sdd='export DESIGN=$PWD; export DMWA=$PWD; source $DESIGN/config/cydir/bin/MASTER_CSHRC; echo "PCIOS is: "; readlink $DESIGN/config/pcios; echo "Tech is: "; readlink $DESIGN/config/tech'
alias vdd='export VMS_DDC_TOP=$PWD; export VDDC=$PWD'
alias URs='echo "-U\n-R\n-s" | xargs -n 1 -I opts pm workspace opts $(basename $PWD) | grep -v -e "up-to-date"'
alias c='clear'
alias l='ls --color'
alias l.='ls -d .* --color=auto'
alias ll.='ll -d .* --color=auto'
alias ll='ls -ltrh --color'
alias lls='ls -lSrhA --color'
alias llr='ls -ltrhA --color'
alias u1='cd ../'
alias u='cd ../'
alias u2='cd ../../'
alias uu='cd ../../'
alias u3='cd ../../../'
alias uuu='cd ../../../'
alias u4='cd ../../../..'
alias u5='cd ../../../../..'
alias u6='cd ../../../../../..'
alias uuuu='cd ../../../..'
alias uuuuu='cd ../../../../..'
alias uuuuuu='cd ../../../../../..'
alias which='/usr/bin/which'
alias bvir='bsub -I -R "osrel==70&&ui=virtuoso" virtuoso &'
alias bicfb='bsub -I icfb &'
alias tff='tail -f *log'
alias cdd='cd $DESIGN'
alias cdmwa='cd $DMWA'
alias cvdd='cd $VDDC_DIR'
alias cvddc='cd $VDDC_DIR/../$VDDC_NAME_FORTEMP/tb/fnv/run'
alias s='source ~/.bashrc'
alias sp='source proj_setup.sh'
alias sspansion='source /tools/stabflow/spansion/bashrc.spansion'
alias edd='echo $DESIGN'
alias edmwa='echo $DMWA'
alias evdd='echo $VDDC_DIR'
alias evddc='echo $VDDC_DIR/../$VDDC_NAME_FORTEMP/tb/fnv/run'
alias h='history'

# ... continue with remaining aliases following the same pattern ...

# Path additions
PATH=$PATH:~/bin:~/scripts
PATH=$PATH:/ho***********v***********mar/vjsk_scflow_dev_126/scflow/scripts/bin
export PATH
