vim -s pre_des.key descriptions.txt
awk '$0 ~ /\.\//{print}' descriptions.txt | xargs -I{} touch ./rooms{}
