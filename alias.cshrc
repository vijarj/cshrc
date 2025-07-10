#Terminal setup
set autolist
set autocorrect
set autoexpand
set filec
#set noding

set     red="%{\033[1;31m%}"
set   green="%{\033[0;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[0;37m%}"
set   orange="%{\033[1;214m%}"
set     end="%{\033[0m%}"
alias git_current_branch 'git rev-parse --abbrev-ref HEAD >& /dev/null && echo "{`git rev-parse --abbrev-ref HEAD`}"'

#set prompt="${yellow}%S%h%s ${cyan}%T ${green}%U%n${blue}@%M%u ${yellow} `git_current_branch`  ${cyan}"WW"`date +%V` ${magenta}`date +%D`\n${red}%B%/%b \n${green}%#${white} ${end}"
alias precmd 'set prompt="%{\033[1;33m%}%S%h%s %{\033[1;36m%}%T %{\033[0;32m%}%U%n%{\033[1;34m%}@%M%u %{\033[1;33m%}`git_current_branch`  %{\033[1;36m%}WW`date +%V` %{\033[1;35m%}`date +%D`\n%{\033[1;31m%}%B%/%b \n%{\033[0;32m%}%#%{\033[0;37m%} %{\033[0m%}"'



unset red green yellow blue magenta cyan yellow white end

#ENV variables -To display directories in color
setenv LS_COLORS "di=103;34:fi=00"

unalias vim
# Aliases
alias a alias
#############
a gs         'set branch=`git branch --show-current` && set staged=`git diff --staged --numstat | wc -l | sed "s/ //g"` && set modified=`git diff --numstat | wc -l | sed "s/ //g"` && set untracked=`git ls-files --others --exclude-standard | wc -l | sed "s/ //g"` && set ahead=`git status -sb | grep -o "\[ahead [0-9]*\]" | grep -o "[0-9]*" || echo "0"` && set behind=`git status -sb | grep -o "\[behind [0-9]*\]" | grep -o "[0-9]*" || echo "0"` && set stashed=`git stash list | wc -l | sed "s/ //g"` && echo "Branch: $branch" && echo "📦 Staged: $staged" && echo "📝 Modified: $modified" && echo "❓ Untracked: $untracked" && echo "⬆️  Ahead: $ahead" && echo "⬇️  Behind: $behind" && echo "📋 Stashed: $stashed"'
a sdd       'setenv DESIGN $PWD; setenv DMWA $PWD;source $DESIGN/config/cydir/bin/MASTER_CSHRC; echo "PCIOS is: "; readlink $DESIGN/config/pcios; echo "Tech is: " ;readlink $DESIGN/config/tech' 
a vdd       'setenv VMS_DDC_TOP $PWD; setenv VDDC $PWD'
a URs       'echo "\-U\n\-R\n\-s" | xargs -n 1 -Iopts pm workspace opts `basename $PWD` | grep -v -e "up\-to\-date"'
a c         clear
a l         "ls --color"
a l.        "ls -d .* --color=auto"
a ll.       "ll -d .* --color=auto"
a ll        'ls -ltrh --color' 
a lls       'ls -lSrhA --color' 
a llr       'ls -ltrhA --color' 
a u1        'cd ../'
a u         'cd ../'
a u2        'cd ../../'
a uu        'cd ../../'
a u3        'cd ../../../'
a uuu       'cd ../../../'
a u4        "cd ../../../.."
a u5        "cd ../../../../.."
a u6        "cd ../../../../../.."
a uuuu      "cd ../../../.."
a uuuuu     "cd ../../../../.."
a uuuuuu    "cd ../../../../../.."
a which     '/usr/bin/which'
a bvir      'bsub -I -R "osrel==70&&ui=virtuoso" virtuoso &'
a bicfb     'bsub -I icfb &'
a tff       'tail -f *log'
a cdd       'cd $DESIGN'
a cdmwa     'cd $DMWA'
a cvdd      'cd $VDDC_DIR'
a cvddc     'cd $VDDC_DIR/../$VDDC_NAME_FORTEMP/tb/fnv/run'
a s	        'source ~/.cshrc'
a sp        'source proj_setup.sh'
a sspansion 'source /tools/stabflow/spansion/cshrc.spansion'
a edd	      'echo $DESIGN'
a edmwa     'echo $DMWA'
a evdd      'echo $VDDC_DIR'
a evddc     'echo $VDDC_DIR/../$VDDC_NAME_FORTEMP/tb/fnv/run'
a h         'history'
a gcshrc    'gvim -c "source ~/vimrc" ~/.cshrc'
a guserenv  'gvim -c "source ~/vimrc" ~/.userenv'
a cshrc     'vim ~/.cshrc'
a gvimrc    'gvim ~/vimrc'
a vimrc     'vim ~/vimrc'
a galias    'gvim -c "source ~/vimrc" ~/alias.cshrc'
a e	        'exit'
a gvid      'gvim -c "source ~/vimrc" ~/.DESIGN.vjsk'
a svid      'source ~/.DESIGN.vjsk'
a du	      'du -sh --apparent-size'
a duc	      'du -shc --apparent-size'
a cpuinfo   'cat /proc/cpuinfo'
a sv        'bsub -Ip simvision -64 &'
#Software aliases
a g         'gvim -c "source ~/vimrc"'
a v         'vim -c "source ~/vimrc"'
a vlog      '/tools/apps/local/mentor/questasim_10.4c_6/questasim/bin/vlog'
#mail
a mail      'echo "" | mutt -a '
#chmod permissions
a chm       'chmod 755 *'
a chmr      'chmod -R 755 *'
a ch        'chmod 777 *'
a chr       'chmod -R 777 *'
a chmi      'chmod 755 '
a chmri     'chmod -R 755 '
a chi       'chmod 777 '
a chri      'chmod -R 777 '
a chx       'chmod +x '
#Location aliases
a cdtemp    'pushd .; cd $VJSK_TEMP_PATH'
a cduserdir 'cd /opt/userdir/sureshkumar'

a bverdi    'bsub -XF -I -q vcsruntime -R "rusage[mem=4GB]" verdi -base -ssf'
a bbsub     'bsub -XF -I -q vcsruntime -R "rusage[mem=4GB]"'
a stt       'echo -n "\033]0;`pwd | cut -d'/' -f6`\007"'
a str       'echo -n "\033]0;results\007"'
a cdl       'cd `ls -dt */ | head -n1`'

#Paths - Because I don't have to source .cshrc everytime which changes $DESIGN
set path = ( ${path} ~/bin ~/scripts )
set path = ( ${path} /Applications/MacVim.app/Contents/bin )

#GIT aliases
#Just use git graph - will display date and who made commits
#git config --global alias.graph "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"


