ls ~/X &> /dev/null || ln -s /dev/null ~/X
ls ~/_ &> /dev/null || ln -s ~/PA2/rooms ~/_
cd ~/PA2;rm -rf rooms; tar -xf rooms.tar
cd rooms/receivingRoom;PS1=">"

alias x='cat'
alias score='echo You have scored `(cd ~/PA2/rooms/treasureRoom;ls [^9d.]* 2>/dev/null | wc -l)`0 points.'
alias quit='score;exit'
alias nogo='echo You cannot go that way.'
alias s='basename `pwd -P` | grep -w n &> /dev/null && cd .. || cd s &> ~/X && disp || nogo'
alias n='basename `pwd -P` | grep -w s &> /dev/null && cd .. || cd n &> ~/X && disp || nogo'
alias e='basename `pwd -P` | grep -w w &> /dev/null && cd .. || cd e &> ~/X && disp || nogo'
alias w='basename `pwd -P` | grep -w e &> /dev/null && cd .. || cd w &> ~/X && disp || nogo'
alias sw='basename `pwd -P` | grep -w ne &> /dev/null && cd .. || cd sw &> ~/X && disp || nogo'
alias nw='basename `pwd -P` | grep -w se &> /dev/null && cd .. || cd nw &> ~/X && disp || nogo'
alias d='basename `pwd -P` | grep -w u &> /dev/null && cd .. || cd d &> ~/X && disp || nogo'
alias u='echo $(ls -al u 2> ~/X) | fgrep -v nope &> ~/X && basename `pwd -P` | grep -w d &> /dev/null && cd .. || cd u &> ~/X && disp || nogo'
alias se='echo $(ls -al se 2> ~/X) | fgrep -v nope &> ~/X && basename `pwd -P` | grep -w nw &> /dev/null && cd .. || cd se &> ~/X && disp || nogo'
alias ne='echo $(ls -al ne 2> ~/X) | fgrep -v nope &> ~/X && basename `pwd -P` | grep -w sw &> /dev/null && cd .. || cd ne &> ~/X && disp || nogo'

alias l='mv 1 9&>~/X;disp'
alias disp='basename `pwd -P` > ~/X &&(head -n `ls [91]` description;(mv 9 1 &> ~/X;dispmessages))'
alias dispmessages='fgrep -hw `find . -maxdepth 1 -type f | cut -c3- | paste -d "" ~/PA2/rooms/es -` -h ~/PA2/rooms/There | cut -d \; -f 1;'

alias i='echo You currently have:;(cd ~/_/i/i;find . -type f -name "*" | cut -c3- | xargs -i echo A {};)'
alias getall='mv $(ls ??*[^1-9] | grep pipe -v | grep bed -v | grep box -v | grep boulder -v | grep cable -v | grep chute -v | grep description -v | grep dial -v | grep floor -v | grep ibm -v | grep ladder -v | grep lake -v | grep painting -v | grep urinal -v | grep button -v) ~/_/i/_ || echo Nothing to take.; (cd ~/_/i/_;ls | xargs -n1 echo Taken:)&&mv ~/_/i/_/* ~/_/i/i &>~/X'
alias dropweight='ls ~/_/i/i/ | grep weight 1>~/X && ls | grep button 1>~/X && basename `pwd -P` | grep d 1>~/X && mv ../d ../.d && ln -s ~/PA2/rooms/buttonRoom/ ../d && cd d;(ls ~/_/i/i | grep weight 1>~/X|| echo "You do not have that.";(ls ~/_/i/i | grep weight 1>~/X && mv ~/_/i/i/weight ./ && echo "Done")&& ls | fgrep weight 1>~/X && ls | fgrep button 1>~/X && echo "A passageway opens.")2>~/X'
alias press='(cat | grep "press" -A2 || echo "You cannot press that.") <'
alias put='(ls urinal &> ~/X || ls chute &> ~/X) && ((ls urinal &> ~/X && echo "You hear it plop down in some water below." && mv $(find ~/_/i/i/ -type f -name "*" | fgrep -ebracelet -egold -ediamon -esilver -eplatinum) ~/_/ &> ~/X) || (ls chute &> ~/X && echo "You hear it slide down the chute and off into the distance." && mv $(find ~/_/i/i -type f -name "*" | fgrep -ebracelet -egold -ediamond -esilver -eplatinum) ~/_/treasureRoom &> ~/X && score) || echo "No treasure to put into it.") || echo "Nothing to put treasures into."'
alias flush='ls urinal &> ~/X && echo "Whoooosh!!" || echo "I see nothing to flush" && mv $(find ~/_/ -maxdepth 1 -type f -name "*" | fgrep -ebracelet -ediamond -egold -esilver -eplatinum) ~/_/treasureRoom/ &> ~/X && score'

l
