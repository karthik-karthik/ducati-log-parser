sub printline($$)
{
	my $i = $depth;
	my $line = shift;
	my $dir = shift;

	#print $line;
	my ($field, $value) = $line =~ m/(.*\-\-)(.*)$/; 
	#print $field;
	#print MYFILE "\n\n";
	while($i >= 0)
	{
		#print MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE "\n\t\t\t\|";
		$i--;
	}
	print MYFILE $value;
	if($dir eq "enter")
	{
		print MYFILE "\n\t\t\t\|------------------------------>\|";
	}
	else
	{
		print MYFILE "\n\t\t\t\|<------------------------------\|";
		print MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE "\n\t\t\t\|\t\t\t\t\|";

	}
}

#main
$depth = 0;

open(MYFILE, "callflow.txt");
@lines = <MYFILE>;
close(MYFILE);

open(MYFILE, ">output.txt");
print MYFILE "\t\t\t    A9 \t\t\t      Ducati";
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
}
system("type output.txt");
