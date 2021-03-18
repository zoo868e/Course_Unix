ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s /dev/null ~/_
cd ~/PA2;rm -rf rooms; tar -xf rooms.tar
cd rooms/receivingRoom;
PS1=">"

alias x='cat'
alias score='echo You have scored `(cd ~/PA2/rooms/treasureRoom;ls [^9d.]* 2>/dev/null | wc -l)`0 points.'
alias quit='score;exit'
alias nogo='echo You cannot go that way.'

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
