ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s /dev/null ~/_
cd ~/PA2;rm -rf rooms; tar -xf rooms.tar
cd rooms/receivingRoom;PS1=">"

alias x='cat'
alias score='echo You have scored `(cd ~/PA2/rooms/treasureRoom;ls [^9d.]* 2>/dev/null | wc -l)`0 points.'
alias quit='score;exit'
alias nogo='echo You cannot go that way.'
alias s='basename `pwd -P` | grep n &> /dev/null && cd .. || cd s &> ~/X && disp || nogo'
alias n='basename `pwd -P` | grep s &> /dev/null && cd .. || cd n &> ~/X && disp || nogo'
alias e='basename `pwd -P` | grep w &> /dev/null && cd .. || cd e &> ~/X && disp || nogo'
alias w='basename `pwd -P` | grep e &> /dev/null && cd .. || cd w &> ~/X && disp || nogo'
alias sw='basename `pwd -P` | grep ne &> /dev/null && cd .. || cd sw &> ~/X && disp || nogo'
alias nw='basename `pwd -P` | grep se &> /dev/null && cd .. || cd nw &> ~/X && disp || nogo'
alias d='basename `pwd -P` | grep u &> /dev/null && cd .. || cd d &> ~/X && disp || nogo'
alias u='echo $(ls -al u) | fgrep -v nope && basename `pwd -P` | grep d &> /dev/null && cd .. || cd u &> ~/X && disp || nogo'
alias se='echo $(ls -al se) | fgrep -v nope && basename `pwd -P` | grep nw &> /dev/null && cd .. || cd se &> ~/X && disp || nogo'
alias ne='echo $(ls -al ne) | fgrep -v nope && basename `pwd -P` | grep sw &> /dev/null && cd .. || cd ne &> ~/X && disp || nogo'

alias l='mv 1 9&>~/X;disp'
alias disp='__4__&&(head -n `ls [91]` description;(mv 9 1;dispmessages))'
alias dispmessages='fgrep -hw `find . -maxdepth 1 -type f | cut -c3- | paste -d "" ~/PA2/rooms/es -` -h ~/PA2/rooms/There | cut -d \; -f 1;'

alias i='echo You currently have:;(cd ~/i/i;ls | xargs -n1 echo A)'
alias getall='mv {axe,bracelet,diamond,floppy,gold,key,lamp,paper,platinum,preserver,rms,shovel,silver,towel,weight} ~/_/i/_&>~/X||echo Nothing to take.; (cd ~/_/i/_;ls | xargs -n1 echo Taken:)&&mv ~/_/i/_* ~/_/i/i&>~/X'
alias dropweight='__1__ && __2__;(__3__;__4__&&__5__)2>~/X'
alias press='(cat | grep "press" -A2 || echo "You cannot press that.") <'
alias put='__1__'
alias flush='__1__'

l
