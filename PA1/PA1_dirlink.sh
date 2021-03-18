mkdir -p rooms/receivingRoom/e/n/e/d
### at rooms/ ###
cd rooms
mkdir buttonRoom
mkdir mistyRoom
mkdir -p buttonRoom/nw/u/se/d/nw//nw/s/s/s/s/s
mkdir -p mistyRoom/e/e/n/w
mkdir -p mistyRoom/e/e/n/d/s
mkdir -p mistyRoom/e/e/s/d
mkdir receivingRoom/e/e

### at rooms/buttonRoom ###
cd buttonRoom
ln -s . d
ln -s . e
ln -s . ne
ln -s . se
ln -s . sw
ln -s . w
### at rooms/buttonRoom/nw ###
cd nw
ln -s . d
ln -s . e
ln -s . n
ln -s . ne
ln -s . nw
ln -s . s
ln -s . sw
ln -s . w
### at rooms/buttonRoom/nw/u ###
cd u
ln -s . e
ln -s . d
ln -s . ne
ln -s . nw
ln -s . s
ln -s . sw
ln -s . w
### at rooms/buttonRoom/nw/u/se ###
cd se
ln -s ./../.. w
### at rooms/buttonRoom/nw/u/se/d ###
cd d
ln -s . se
### at rooms/buttonRoom/nw/u/se/d/nw ###
cd nw
ln -s ../../../../../../receivingRoom/e/n/e se
ln -s ../../../../ d
ln -s ../../../../ e
ln -s ../../../../ n
ln -s ../../../../ s
ln -s ../../../../ w
ln -s ../../../../ se
ln -s ../../../../ sw
ln -s ../../../../ u
ln -s ../../../../ ne
### at rooms/buttonRoom/nw/u/se/d/nw/nw ###
cd nw
ln -s ../../../../ se
### at rooms/buttonRoom/nw/u/se/d/nw/nw/s ###
cd s
