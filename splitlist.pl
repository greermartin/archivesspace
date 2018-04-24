#!/usr/local/bin/perl -w
#
# Program to take an argument and search
# a file, printing instances of it


print "What file do you want to split\? ";

chomp($file = <>); 
open(INFO, $file) or die "can't open $file";
#open(ERROR, ">error.txt");
@txt = <INFO>;      #read data into an array
close(INFO);
chomp @txt;         #get rid of all the many \n's taken into the array
$txt = "@txt";      #read entire array into one scalar--
		    #one long string, in effect


@data = split(/<\/ead>/, $txt); #create array split at each $search
#print ERROR $data;
for ($n=0; $n< $#data; $n++)    # $# is pre-def. as last array element
    {$out=$n;
$outfile = "$out.xml";
open(OUT, ">$outfile");
print OUT "$data[$n]";
print OUT "</ead>\n";
close OUT;    }    

        #and close the "for" loop