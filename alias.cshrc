#vjsk
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

unalias vim
# Aliases
alias a alias
a sdd       'setenv DESIGN $PWD; setenv DMWA $PWD;source $DESIGN/config/cydir/bin/MASTER_CSHRC; echo "PCIOS is: "; readlink $DESIGN/config/pcios; echo "Tech is: " ;readlink $DESIGN/config/tech' 
a vdd       'setenv VMS_DDC_TOP $PWD; setenv VDDC $PWD'
a URs 'echo "\-U\n\-R\n\-s" | xargs -n 1 -Iopts pm workspace opts `basename $PWD` | grep -v -e "up\-to\-date"'
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
a uuu        'cd ../../../'
a u4         "cd ../../../.."
a u5         "cd ../../../../.."
a u6         "cd ../../../../../.."
a uuuu       "cd ../../../.."
a uuuuu      "cd ../../../../.."
a uuuuuu     "cd ../../../../../.."
a which     '/usr/bin/which'
a gmi       'gmake install'
a gmr       'gmake rebuild'
a bvir      'bsub -I -R "osrel==70&&ui=virtuoso" virtuoso &'
a svir      'env SPSN_PROCESS=cu80f virtuoso &'
a nxplayer  '/usr/NX/bin/nxplayer'
a bicfb     'bsub -I icfb &'
a tff       'tail -f *log'
a cdd       'cd $DESIGN'
a cdmwa     'cd $DMWA'
a cvdd      'cd $VDDC_DIR'
a cvddc     'cd $VDDC_DIR/../$VDDC_NAME_FORTEMP/tb/fnv/run'
a s	    'source ~/.cshrc'
a sspansion 'source /tools/stabflow/spansion/cshrc.spansion'
a edd	    'echo $DESIGN'
a edmwa     'echo $DMWA'
a h         'history'
a gcshrc    'gvim -c "source ~/vimrc" ~/.cshrc'
a guserenv    'gvim ~/.userenv'
a cshrc     'vim ~/.cshrc'
a gvimrc    'gvim ~/vimrc'
a vimrc     'vim ~/vimrc'
a galias    'gvim -c "source ~/vimrc" ~/alias.cshrc'
a e	    'exit'
a gvid    'gvim -c "source ~/vimrc" ~/.DESIGN.vjsk'
a svid    'source ~/.DESIGN.vjsk'
a wwe     'wwe_icm_workspace -a --show-all'
a du	  'du -sh --apparent-size'
a duc	  'du -shc --apparent-size'
a cpuinfo 'cat /proc/cpuinfo'
a sv 'bsub -Ip simvision -64 &'
# Work Area Aliases
alias sui 'su iptguser'
alias suf 'su frame_tc'
alias suij 'ssh iptguser@login1.jpdc.cypress.com'
alias suisjc 'ssh iptguser@login1.design.cypress.com'
alias suiind  'ssh iptguser@login1.india'
alias suiildc  'ssh iptguser@login1.ildc'
alias suvildc  'ssh vjsk@login1.ildc'
alias sushamu  'ssh vjsk@shamu40.spansion.com'
alias suiftpi 'ssh iptguser@cad-eft101.aus.cypress.com'
alias suiftpv 'ssh vjsk@cad-eft101.aus.cypress.com'
alias suigrdc 'ssh iptguser@login1.grdc'
alias ftplogin 'sftp vjsk@eft.synopsys.com'
alias syni 'cd /proj/gpfs/iptguser/WA/iptguser_scs22eval_dev_12888/scs22eval/vendor/synopsys_7T'
#PV aliases
alias xextlog 'xext -r &; tail -f *.log'
alias xdrclog 'xdrc -r &; tail -f *.log'

#Evaluation licenses
alias lc_eval 'setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-aus-eval-wan/license.dat'
alias lc_ifx 'setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-ap-cwan_ifx/license.dat'

setenv P4USER vjsk
#Perl NCX
#setenv PERL5LIB "/tools/apps/synopsys/ncx_vC-2009.06-SP3/ccsn/amd64/perl/lib/5.8.3/x86_64-linux:/tools/apps/synopsys/ncx_vC-2009.06-SP3/ccsn/amd64/perl/lib/5.8.3:/tools/apps/synopsys/ncx_vC-2009.06-SP3/ccsn/amd64/perl/site_perl/5.8.3/x86_64-linux:/tools/apps/synopsys/ncx_vC-2009.06-SP3/ccsn/amd64/perl/site_perl/5.8.3:/tools/apps/synopsys/ncx_vC-2009.06-SP3/ccsn/amd64/perl/site_perl:."

#icmp4 aliases
alias iadd 'icmp4 add'
alias bsyncf 'bsub -Ip icmp4 sync -f ...'
alias syncf 'icmp4 sync -f ...'
alias bsync 'bsub -Ip icmp4 sync ...'
alias sync 'icmp4 sync ...'
alias isubmit 'icmp4 submit'
alias btkdiff 'bsub -Ip tkdiff'
alias irevert 'icmp4 revert ...'
alias iopened 'icmp4 opened ...'
alias iopeneda 'icmp4 opened -a ...'
alias iedit 'icmp4 edit'
alias i 'icmp4'
alias b 'bsub -Ip'

#Location aliases
alias cdtraining 'cd /proj/gpfs/vjsk/training' 
alias cdspansion 'cd /tools/stabflow/spansion/spnpdk/umc40lpect/lpo/v1.0'
alias cdscripts 'cd /proj/gpfs/vjsk/myscripts'
alias gpfs 'cd /proj/gpfs/vjsk'

#ENV variables -To display directories in color
setenv LS_COLORS "di=103;34:fi=00"


#mail
alias mail 'echo "" | mutt -a '
#chmod permissions
alias chm 'chmod 755 *'
alias chmr 'chmod -R 755 *'
alias ch 'chmod 777 *'
alias chr 'chmod -R 777 *'
alias chmi 'chmod 755 '
alias chmri 'chmod -R 755 '
alias chi 'chmod 777 '
alias chri 'chmod -R 777 '
alias chx 'chmod +x '

#PCIOS setup alias
alias  ss40       'setenv DESIGN "/proj/gpfs/iptguser/WA/iptguser_scl40_dev_8132"; setenv DMWA "/proj/gpfs/iptguser/WA/iptguser_scl40_dev_8132"; source $DESIGN/config/cydir/bin/MASTER_CSHRC; echo "PCIOS is: "; readlink $DESIGN/config/pcios; echo "Tech is: " ;readlink $DESIGN/config/tech; source ~/alias.cshrc' 
alias  smb45       'setenv DESIGN "/proj/gpfs/vjsk/IP/vjsk_scf45hv_dev_57"; setenv DMWA "/proj/gpfs/vjsk/IP/vjsk_scf45hv_dev_57"; source $DESIGN/config/cydir/bin/MASTER_CSHRC; echo "PCIOS is: "; readlink $DESIGN/config/pcios; echo "Tech is: " ;readlink $DESIGN/config/tech; source ~/alias.cshrc' 


#Software aliases
alias abstract 'bsub -I -R "select[type==X86_64&&os==centos6]" abstract -64 &'
#alias gvim 'gvim -c "source ~/.vimrc"'
alias g 'gvim -c "source ~/vimrc"'
alias x11 'x11vnc -loop -passwd vijay123'
#alias g 'gvim'
alias v 'vim -c "source ~/vimrc"'
alias vlog '/tools/apps/local/mentor/questasim_10.4c_6/questasim/bin/vlog'
alias p4v 'bsub -R "(osrel=80 || osrel=70) && ui=perforce_gui" /opt/perforce/p4v/latest/bin/p4v'

#if (! $?DESIGN) then
#	echo "Note: DESIGN Variable is undefined"
#else
#   if ("$DESIGN" == "") then
#	echo "Note: DESIGN Variable is empty"
#   else
#        echo "DESIGN Variable is set to $DESIGN"
#        set workspace = `basename $DESIGN`
#	set split= ( $workspace:as/_/ / )  #split gets the ddc name
#	alias cdrhview 'cd $DESIGN/$split[2]/rhview/$split[2]/apl'
#	alias cdoa 'cd $DESIGN/$split[2]/oa/$split[2]'
#	alias cdhdl 'cd $DESIGN/$split[2]/hdl/$split[2]'
#	alias cdatpg 'cd $DESIGN/$split[2]/atpg/$split[2]'
#	alias cdpnr 'cd $DESIGN/$split[2]/pnr/$split[2]'
#	alias cdsyn 'cd $DESIGN/$split[2]/syn/$split[2]'
#	alias cdv 'cd $DESIGN/$split[2]/v/$split[2]'
#	alias cdchar 'cd $DESIGN/$split[2]/char/$split[2]'
#	alias cddoc 'cd $DESIGN/$split[2]/doc/'
#   endif
#endif

#WorkArea Design Aliaases
alias cdlvl 'cd /proj/gpfs/frame_tc/FRAMES/frame_tc_s8frames_dev_282/8c40010ab_frame/v/e15987z/lvl/tmp'
alias cdtemp 'pushd .; cd $VJSK_TEMP_PATH'
alias cduserdir 'cd /opt/userdir/sureshkumar'

#Paths - Because I don't have to source .cshrc everytime which changes $DESIGN
set path = ( ${path} ~/bin ~/scripts )
set path = ( ${path} /proj/destools/golden/destools/cad/bin)
set path = ( ${path} /tools/apps/ruby/bin)
#set path = ( ${path} /proj/module_automation/golden/module_automation/ruby)
#set path = ( ${path} /proj/module_automation/golden/module_automation/tcl)
#set path = ( ${path} /proj/module_automation/golden/module_automation/perl)
#set path = ( ${path} /proj/module_automation/golden/module_automation/html)
#set path = ( ${path} /proj/module_automation/golden/module_automation/html/rubyFile)
set path = ( ${path} ~/bin)
set path = ( ${path} /proj/gpfs/vjsk/myscripts/bash)
set path = ( ${path} /home/vjsk/licenses)
set path = ( ${path} /tools/stabflow/mainline/OVERWRAPPERS)
set path = ( ${path} /proj/gpfs/vjsk/IP/vjsk_scflow_dev_66/scflow/scripts/bin)
set path = ( ${path} /home/icwhip.ivcs/sureshkumar/vjsk_scflow_dev_126/scflow/scripts/bin)
setenv mo "/proj/module_automation/golden/module_automation"

#License Alias
#hspice
#setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-design-prod-wan/license.dat
#setenv LM_LICENSE_FILE "/proj/lic_vault/golden/lic_vault/snpslmd-na-cwan-ifx/license.dat:/proj/lic_vault/golden/lic_vault/snpslmd-design-prod-wan/license.dat:/proj/lic_vault/golden/lic_vault/cdslmd-spsjc-prod-wan/license.dat:8224@armlmd-aus-prod-wan.licenses.cypress.com:/proj/lic_vault/golden/lic_vault/cdslmd-aus-temp-wan/license.dat"
setenv LM_LICENSE_FILE /proj/lic_vault/golden/lic_vault/snpslmd-na-cwan-ifx/license.dat

#Design Aliases
