BEGIN{
	PWD = "~/_/pokey/usr/toukmond"
while(1){
	gsub("/\.","",PWD)
#	print("after remove /. from PWD : " PWD)
	while(PWD~"/[^/\.]+\."){
		sub("/[^/\.]+\.","",PWD)
#		print("sub dot : " PWD)
		}
#	print("after remove [^/]+. from PWD : " PWD)
	gsub("/+","/",PWD)
	sub("\/*$","",PWD)
#	print("updwte PWD: " PWD)
	printf "$ ";
	getline < "-";
	gsub("\<-", "\\-");
	gsub("\[", "\r");
	gsub("\?", "\v");
	gsub("\*", "\b");
	x = $0;
	print x;
	if(NF == 0)continue
	if($1 == "cat"){
		if(NF == 1){
			print("Usage: cat <ascii-file-name>");
			continue;
			}
		else if($2~".*/.*"){
			print("cat: only files in current directory allowed.");
			}
		else if(system("test -e " PWD "/" $2)){
			print("File not found.");
			}
		else if($2 == "description"){
			system("cat " PWD "/description");
			}
		else{
			print("Ascii files only.");
			}
		}
	else if($1 == "exit"){
		exit
		}
	else if($1 == "pwd"){
		system("echo " PWD " | sed 's/.*pokey//;s_/*$_/_'")
		}
	else if($1 == "echo"){
		sub("echo","")
		sub(" ","")
		print($0)
		}
	else if(($1 != "ls") && ($1 != "cd")){
		gsub("\.","",$1)
		gsub("\r","[",$1)
		gsub("\v","?",$1)
		gsub("\b","*",$1)
		print($1 ": not found.")
		}

	else{
		if(NF == 1){
			if($1 == "cd"){
				print("Usage: cd <path>")
				continue
				}
			$2 = "."
			}
		if($2~"^/.*"){
			$2 = "~/_/pokey" $2
			}
		else if($2~".*/.*"){
			$2 = PWD "/" $2
			}
		else{
			$2 = PWD "/" $2
			}
		if(system("test -d " $2)){
			print("No such directory.")
			}
		else if($1 == "cd"){
			PWD = $2
#			print("cd PWD : " PWD)
			}
		else if($1 == "ls"){
			z = 0
			cmd = "ls -rtl "PWD
			while((cmd | getline temp) > 0){g[l[PWD]++] = temp}
			$0 = g[l[PWD] - 1]
			for(b = 0;b < l[PWD];b++){
				gsub("  *"," ",g[b])
				$0 = g[b]
				newline = $1
				for(i = 2;i <= NF;i++){
					if(i == 3 || i == 4)continue
					else {newline = newline " " $i}
					}
				gsub("\+","",newline)
				gsub("197[12]","1970",newline)
				gsub("  *"," ",newline)
				if(newline~"toukmond" || (newline!~"^d" && newline!~"des")){
					sub(" [0-9]+ ","@",newline)
					}
				if(newline!~"@"){
					sub(" [0-9]+ ","~",newline)
					}
				sub("~[^ ].[0-9]*","~2048",newline)
				if(b == 1){
					dotline = newline
					sub(".","d",dotline)
					sub("[^ ]*$",".",dotline)
					sub("[~@][0-9]*","~2048",dotline)
#					print(dotline)
					$0 = dotline
					if(PWD~"toukmond"){
						sub("~","@")
						}
					newline = $0 "\n" dotline ".\n" newline
#					print(newline)
					if(newline~"10423"){
						sub("~","@",newline)
						}
					sub("2048","512",newline)
					}
				gsub("~"," 3 root !!!!staff~",newline)
				gsub("@"," 1 toukmond restricted~",newline)
				$0 = newline
				for(f = 4;f <= NF;f=f+8){
					word = $f $(f-1) $(f-2) $(f-3)
#					gsub("!","",word)
					for(len = 0;len <= 39;len++){
						if(len == length(word)){
							for(z = len;z<39;z++){
								sub("~","!~",$f)
								}
								sub("~","",$f)
								break
							}
						}
					}
				newline = ""
				n = 0
				for(f = 4;f <= NF;f=f+8){
					sub("$","~",$f)
					}
				if(NF > 8){
					n = 0
					nl[n] = $1
					for(f = 2;f <= NF;f++){
						nl[n] = nl[n] " " $f
						if(f % 8 == 0 && f != NF){
							n = n + 1
							f = f + 1
							nl[n] = $f
							}
						}
					}
				if(n > 0){
					newline = nl[0]
					for(s = 1;s <= n;s++){
						newline = newline "\n" nl[s]
						}
					$0 = newline
					}
					
				gsub("!"," ",$0)
				gsub("~","",$0)
				print($0)
				}
			}
		}
	}
}
