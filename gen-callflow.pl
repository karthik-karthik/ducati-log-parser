


$depth = 0;
sub printlline($$);
open(MYFILE, "callflow.txt");
@lines = <MYFILE>;
close(MYFILE);

open(MYFILE, ">output.txt");
print MYFILE "\t\t\t A9 \t\t\t         Ducati";
foreach $line (@lines)
{
	if($line =~ m/i2c/)
	{
		next;
	}
	if($line =~ m/Entering/)
	{
		printline($line, "enter");
		$depth++;
	}
	if($line =~ m/Exiting/)
	{
		printline($line, "exit");
		$depth--;
	}
	if($line=~m/PARAMETERS/)
	{
		printline($line,"parameters");
	}
}

system("type output.txt");



sub printline($$)
{
	my $i = $depth;
	my $line = shift @_;
	my $dir = shift @_;

	
	while($i >= 0)
	{
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|";
		$i--;
	}

	if($dir eq "enter")
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		print MYFILE "Entered",$value;
		print MYFILE "\n\t\t\t\|------------------------------>\|";
	}
	elsif($dir eq "parameters" )
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		#my @val=split /,|\s/,$value;
		my @val=split /,/,$value;
		#print "\n $value";
		#foreach $temp (@val)
		#{
		#		print "--- $temp";
		#}
		my $length=@val;
		
		#print MYFILE  "\n\t\t\t\|<------------------------------\|";
		#print MYFILE "\r","\t\tParameters==>";
			for ( $i=1;$i<$length-1;$i++)

		{
 			print MYFILE "\r\t\t\t $val[$i] \n";
		}
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
	
		
					
	}
	else
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		#my ($field, $ignore,$value)= $value =~ m/(.*)(.*with return value)(.*)$/;
		my @val=split /\s/,$value;
		print MYFILE "Leaving",$val[1]," ",$val[5];
		print MYFILE  "\n\t\t\t\|<------------------------------\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";

	}
}

