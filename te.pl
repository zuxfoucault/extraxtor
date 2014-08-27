#!/usr/bin/perl

while (<>){
	#print "$ARGV \n" if ($. == 1);
	if (m#\|\|\|new#i .. m#\+\+\+new#i){
		print "$ARGV \n" if (m#\|\|\|new#i);
		print "$. : ", $_; #print if m#\|\|\|new#i .. m#\+\+\+new#i;
		#print "$ARGV" if eof;
	}
	#print "$ARGV \n" if eof;
	close ARGV if eof;
}

#while (<>){
#	print "line $. : ", #print if m#\|\|\|new#i .. m#\+\+\+new#i;
#	print if m#\|\|\|new#i .. m#\+\+\+new#i;
#	#print "$ARGV" if eof;
#	close ARGV if eof;
#}



#echo $1
#s/|||new(.*?)+++new/$1/s; #notice the trailing slash
#print;
