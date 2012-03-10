


$depth = 0;
sub printlline($$);
open(MYFILE, "startup_log-playbook.txt");
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
		print MYFILE $value;
		print MYFILE "\n\t\t\t\|------------------------------>\|";
	}
	else
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		my ($field, $ignore,$value)= $value =~ m/(.*)(.*with return value)(.*)$/;
		print MYFILE $field,"  ",$value."\n";
		print MYFILE  "\n\t\t\t\|<------------------------------\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";

	}
}

