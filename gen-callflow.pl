$depth = 0;
sub printline($$);
#sub printecmd;
#sub printnconfigindex;
#sub nParamIndex;
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
		if($line=~m/eCmd/)
		{
			printline($line,"eCmd");
		}
		elsif($line=~m/nParamIndex/)
		{
			printline($line,"nParamIndex");
		}
		elsif($line=~m/nConfigIndex/)
		{
				printline($line,"nConfigIndex");
		}
	}
}

system("type output.txt");



sub printline($$)
{
	my $line = shift @_;
	my $dir = shift @_;
	my $temp_depth=$depth;

	while($temp_depth >= 0)
	{
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|";
		$temp_depth--;
	}



	if($dir eq "enter")#FOR EX==Prasad Log:Entering Function RPC_SKEL_SendCommand
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		print MYFILE "Entered ",$value;
		print MYFILE "\n\t\t\t\|------------------------------>\|";
	}

	elsif ($dir eq "exit")#FOR EX==Prasad Log:Exiting Function RPC_SKEL_SendCommand with return value 0x0
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		my @val=split /\s/,$value;
	 	print MYFILE "Leaving ",$val[1]," ",$val[5];
		print MYFILE  "\n\t\t\t\|<------------------------------\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
	}

	elsif ($dir eq "eCmd")#FOR EX==Prasad Log:PARAMETERS:Function RPC_SKEL_SendCommand, hComp=0x4289c0, eCmd=0x0, nParam=3, pCmdData=0xa006c8cc
	{
		require 'OMX_COMMANDTYPE.pl';
		my ($field,$value)=$line=~m/(.*unction)(.*)$/;
		my @value=split /,/,$value;  #value contains parameters starting with space(as in log there is space)
		$eCmd=$value[2];
		$nParam=$value[3];
		($ignore,$eCmd)=$eCmd=~m/(.*0x)(.*)$/;
		($ignore,$nParam)=$nParam=~m/(.*=)(.*)$/;
		for ($i=0;$i<=5;$i++)
		{
			if ($eCmd eq $OMX_COMMANDTYPE[$i][0])
			{
				$eCmdFlag=$i;				
		 	}
		}
		print MYFILE  "\n\t\t\t\|-------------------------------\|";
		print MYFILE "\r","\t\tParameters==>";
		for ($i=0;$i<@value;$i++)
		{		
			if ($i eq 2)
			{
				print MYFILE $OMX_COMMANDTYPE[$eCmdFlag][1]," to ";
				if ($eCmdFlag eq 0)
				{
					print MYFILE $nParam,"=>",$OMX_STATETYPE[$nParam][1]," ";
					$i++;
				}
				else
				{
					print MYFILE "(Target Port ID)";
				}
			}
			else
			{
				print MYFILE $value[$i]," ";  ##print $i ne $value-1?",":".\n";
			}
		}
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
			
	}

	elsif ($dir eq "nParamIndex")#FOR EX=Prasad Log:PARAMETERS:Function Name RPC_SKEL_GetParameter,nParamIndex=0x7f000025,pCompParam=0xa006a1c8
	{
		require 'OMX_TI_INDEXTYPE.pl';
                my ($field,$value)=$line=~m/(.*unction)(.*)$/;
		my @value=split /,/,$value;  
		$nParamIndex=$value[1];
		($ignore,$nParamIndex)=$nParamIndex=~m/(.*=)(.*)$/;
		for ($i=0;$i<=129;$i++)
		{
		if ($nParamIndex eq $OMX_TI_INDEXTYPE[$i][0])
			{
				$nParamIndexFlag=$i;				
		 	}
		}
		print MYFILE  "\n\t\t\t\|<------------------------------\|";
		print MYFILE "\r","\t\tParameters==>";
		for ($i=0;$i<@value;$i++)
		{		
			if ($i eq 1)
			{
				print MYFILE $OMX_TI_INDEXTYPE[$nParamIndexFlag][1]," ";
			}
			else
			{
				print MYFILE $value[$i]," ";  ##print $i ne $value-1?",":".\n";
			}
		}
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
			
	}


	elsif ($dir eq "nConfigIndex")#FOR EX==Prasad Log:PARAMETERS:Function RPC_SKEL_GetConfig, nConfigIndex=0x7f000019,pCompConfig=0xa0067dc8
	{
		require 'OMX_TI_INDEXTYPE.pl';
             	require 'OMX_nCONFIGINDEXTYPE.pl';   		
		my ($field,$value)=$line=~m/(.*unction)(.*)$/;
		my @value=split /,/,$value;
               	$nConfigIndex=$value[1];
		($ignore,$nConfigIndex)=$nConfigIndex=~m/(.*=)(.*)$/;##debugprint print $nConfigIndex,"\n";
		for ($i=0;$i<=164;$i++)
		{
			if ($nConfigIndex=~m/$OMX_nCONFIGINDEXTYPE[$i][0]/) 
			{
				$nConfigIndexFlag=$i;$flag=1;##debugprint print $nConfigIndex,"===>",$OMX_nCONFIGINDEXTYPE[$i][0],"\n";
				
		 	}
			elsif($nConfigIndex=~m/$OMX_TI_INDEXTYPE[$i][0]/)
			{
				$nParamIndexFlag=$i;$flag=2;##debugprint print $nConfigIndex,"===>",$OMX_TI_INDEXTYPE[$i][0],"\n";
								
		 	}

		}
		print MYFILE  "\n\t\t\t\|<------------------------------\|";
		print MYFILE "\r","\t\tParameters==>";
		for ($i=0;$i<@value;$i++)
		{		
			if ($i eq 1)
			{
				if(flag eq 1)
				{
					print MYFILE $OMX_nCONFIGINDEXTYPE[$nConfigIndexFlag][1]," ";
				}
				else
				{
					print MYFILE $OMX_TI_INDEXTYPE[$nParamIndexFlag][1]," ";
				}
			}
			else
			{
				print MYFILE $value[$i]," ";  ##print $i ne $value-1?",":".\n";
			}
		}
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
			
	}

}
