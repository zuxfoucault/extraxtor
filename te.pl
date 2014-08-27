#!/usr/bin/perl

# extract lines between keyword pairs
# show line numbers and paring file name

while (<>){
	if (m#\|\|\|new#i .. m#\+\+\+new#i){ # show file name
		print "$ARGV \n" if (m#\|\|\|new#i); # extract content
		print "$. : ", $_; # print line number
	}
	close ARGV if eof; # reset line counter for each new file
}
