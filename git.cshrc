git rev-parse --git-dir >& /dev/null && (\
    echo -n " %{\033[0;33m%}("\
    # Branch name
    echo -n `git branch --show-current`\
    # Staged files count
    set staged=`git diff --staged --numstat | wc -l`\
    if ( $staged > 0 ) echo -n " ●$staged"\
    # How many commits ahead
    set ahead=`git rev-list --count HEAD @{u} 2>/dev/null`\
    if ( $ahead > 0 ) echo -n " ↑$ahead"\
    # Modified files
    set modified=`git diff --numstat | wc -l`\
    if ( $modified > 0 ) echo -n " +$modified"\
    # Untracked files
    set untracked=`git ls-files --others --exclude-standard | wc -l`\
    if ( $untracked > 0 ) echo -n " ?$untracked"\
    # Stashed changes
    set stashed=`git stash list | wc -l`\
    if ( $stashed > 0 ) echo -n " ⚑$stashed"\
    echo -n "%{\033[0m%})"\

