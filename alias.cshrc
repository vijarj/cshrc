#vjsk
setenv P4USER vjsk
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
set prompt="${yellow}%S%h%s ${cyan}%T ${green}%U%n${blue}@%M%u ${yellow}`domainname` ${cyan}"WW"`date +%V` ${magenta}`date +%D`\n${red}%B%/%b \n${green}%#${white} ${end}"
unset red green yellow blue magenta cyan yellow white end

#ENV variables -To display directories in color
setenv LS_COLORS "di=103;34:fi=00"

unalias vim
# Aliases
alias a alias
#############
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
a sspansion 'source /tools/stabflow/spansion/cshrc.spansion'
a edd	      'echo $DESIGN'
a edmwa     'echo $DMWA'
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
#icmp4 aliases
a i         'icmp4'
a b         'bsub -Ip'
#Software aliases
a g         'gvim -c "source ~/vimrc"'
a v         'vim -c "source ~/vimrc"'
a vlog      '/tools/apps/local/mentor/questasim_10.4c_6/questasim/bin/vlog'
a p4v       'bsub -R "(osrel=80 || osrel=70) && ui=perforce_gui" /opt/perforce/p4v/latest/bin/p4v'
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

#Paths - Because I don't have to source .cshrc everytime which changes $DESIGN
set path = ( ${path} ~/bin ~/scripts )
set path = ( ${path} /proj/destools/golden/destools/cad/bin)
set path = ( ${path} /tools/apps/ruby/bin)
set path = ( ${path} ~/bin)
set path = ( ${path} /proj/gpfs/vjsk/myscripts/bash)
set path = ( ${path} /home/vjsk/licenses)
set path = ( ${path} /tools/stabflow/mainline/OVERWRAPPERS)
set path = ( ${path} /proj/gpfs/vjsk/IP/vjsk_scflow_dev_66/scflow/scripts/bin)
set path = ( ${path} /home/icwhip.ivcs/sureshkumar/vjsk_scflow_dev_126/scflow/scripts/bin)

#License Alias
#hspice
#setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-design-prod-wan/license.dat
#setenv LM_LICENSE_FILE "/proj/lic_vault/golden/lic_vault/snpslmd-na-cwan-ifx/license.dat:/proj/lic_vault/golden/lic_vault/snpslmd-design-prod-wan/license.dat:/proj/lic_vault/golden/lic_vault/cdslmd-spsjc-prod-wan/license.dat:8224@armlmd-aus-prod-wan.licenses.cypress.com:/proj/lic_vault/golden/lic_vault/cdslmd-aus-temp-wan/license.dat"
setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-na-cwan-ifx/license.dat
#Evaluation licenses
a lc_eval   'setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-aus-eval-wan/license.dat'
a lc_ifx    'setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-ap-cwan_ifx/license.dat'

