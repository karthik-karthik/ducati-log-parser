


$depth = 0;
sub printlline($$);
@OMX_TI_INDEXTYPE=([ "0x7f000001",OMX_IndexConfigAutoPauseAfterCapture]  ,
	[ "0x7f000002",OMX_TI_IndexConfigChannelName   ] ,  
	[ "0x7f000003",OMX_TI_IndexParamJPEGUncompressedMode  ] ,               
	[ "0x7f000004",OMX_TI_IndexParamJPEGCompressedMode  ] ,                 
	[ "0x7f000005",OMX_TI_IndexParamDecodeSubregion ] ,                    
	[ "0x7f000006",OMX_TI_IndexParamVideoDataSyncMode ] ,                
	[ "0x7f000007",OMX_TI_IndexParamVideoNALUsettings ] ,                 
	[ "0x7f000008",OMX_TI_IndexParamVideoMEBlockSize ] ,                   
	[ "0x7f000009",OMX_TI_IndexParamVideoIntraPredictionSettings ] ,      
	[ "0x7f00000A",OMX_TI_IndexParamVideoEncoderPreset ] ,                
	[ "0x7f00000B",OMX_TI_IndexParamVideoFrameDataContentSettings ] ,     
	[ "0x7f00000C",OMX_TI_IndexParamVideoTransformBlockSize ] ,           
	[ "0x7f00000D",OMX_TI_IndexParamVideoVUIsettings ] ,                  
	[ "0x7f00000E",OMX_TI_IndexParamVideoAdvancedFMO ] ,                   
	[ "0x7f00000F",OMX_TI_IndexConfigVideoPixelInfo ] ,                   
	[ "0x7f000011",OMX_TI_IndexConfigVideoMESearchRange ] ,               
	[ "0x7f000012",OMX_TI_IndexConfigVideoQPSettings ] ,                 
	[ "0x7f000013",OMX_TI_IndexConfigSliceSettings ] ,                   
	[ "0x7f000014",OMX_TI_IndexParamAVCInterlaceSettings ] ,                     
	[ "0x7f000015",OMX_TI_IndexParamStereoInfo2004Settings ] ,               
	[ "0x7f000016",OMX_TI_IndexParamStereoFramePacking2010Settings ] ,                  
	[ "0x7f000017",OMX_IndexConfigSensorSelect ] ,                          
	[ "0x7f000018",OMX_IndexConfigFlickerCancel ] ,                        
	[ "0x7f000019",OMX_IndexConfigSensorCal ] ,                            
	[ "0x7f00001A",OMX_IndexConfigISOSetting ] ,                           
	[ "0x7f00001B",OMX_TI_IndexConfigSceneMode ] ,                         
	[ "0x7f00001C",OMX_IndexConfigDigitalZoomSpeed ] ,                     
	[ "0x7f00001D",OMX_IndexConfigDigitalZoomTarget ] ,                    
	[ "0x7f00001E",OMX_IndexConfigCommonScaleQuality ] ,                   
	[ "0x7f00001F",OMX_IndexConfigCommonDigitalZoomQuality ] ,             
	[ "0x7f000020",OMX_IndexConfigOpticalZoomSpeed ] ,                     
	[ "0x7f000021",OMX_IndexConfigOpticalZoomTarget ] ,                    
	[ "0x7f000022",OMX_IndexConfigSmoothZoom ] ,                           
	[ "0x7f000023",OMX_IndexConfigBlemish ] ,                              
	[ "0x7f000024",OMX_IndexConfigExtCaptureMode ] ,                       
	[ "0x7f000024",OMX_IndexConfigExtPrepareCapturing ] ,                  
	[ "0x7f000025",OMX_IndexConfigExtCapturing ] ,                         
	[ "0x7f000026",OMX_IndexCameraOperatingMode ] ,                        
	[ "0x7f000027",OMX_IndexParamCameraOperatingMode  ] ,  
	[ "0x7f000028",OMX_IndexConfigDigitalFlash ] ,                         
	[ "0x7f000029",OMX_IndexConfigPrivacyIndicator ] ,                     
	[ "0x7f00002A",OMX_IndexConfigTorchMode ] ,                            
	[ "0x7f00002B ",OMX_IndexConfigSlowSync ] ,                             
	[ "0x7f00002C",OMX_IndexConfigExtFocusRegion ] ,                       
	[ "0x7f00002D",OMX_IndexConfigFocusAssist ] ,                          
	[ "0x7f00002E",OMX_IndexConfigImageFocusLock ] ,                       
	[ "0x7f00002F",OMX_IndexConfigImageWhiteBalanceLock ] ,                
	[ "0x7f000030",OMX_IndexConfigImageExposureLock ] ,                    
	[ "0x7f000031",OMX_IndexConfigImageAllLock ] ,                         
	[ "0x7f000032",OMX_IndexConfigImageDeNoiseLevel ] ,                    
	[ "0x7f000033",OMX_IndexConfigSharpeningLevel ] ,                      
	[ "0x7f000034",OMX_IndexConfigDeBlurringLevel ] ,                      
	[ "0x7f000035",OMX_IndexConfigChromaCorrection ] ,                     
	[ "0x7f000036",OMX_IndexConfigDeMosaicingLevel ] ,                     
	[ "0x7f000037",OMX_IndexConfigCommonWhiteBalanceGain ] ,               
	[ "0x7f000038",OMX_IndexConfigCommonRGB2RGB ] ,                
	[ "0x7f000039",OMX_IndexConfigCommonRGB2YUV ] ,                
	[ "0x7f00003A",OMX_IndexConfigCommonYUV2RGB ] ,                        
	[ "0x7f00003B",OMX_IndexConfigCommonGammaTable ] ,                     
	[ "0x7f00003C",OMX_IndexConfigImageFaceDetection ] ,                   
	[ "0x7f00003D",OMX_IndexConfigImageBarcodeDetection ] ,                
	[ "0x7f00003E",OMX_IndexConfigImageSmileDetection ] ,                  
	[ "0x7f00003F",OMX_IndexConfigImageBlinkDetection ] ,                  
	[ "0x7f000040",OMX_IndexConfigImageFrontObjectDetection ] ,            
	[ "0x7f000041",OMX_IndexConfigHistogramMeasurement ] ,                 
	[ "0x7f000042",OMX_IndexConfigDistanceMeasurement ] ,                  
	[ "0x7f000043",OMX_IndexConfigSnapshotToPreview ] ,                    
	[ "0x7f000044",OMX_IndexConfigJpegHeaderType  ] ,                      
	[ "0x7f000045",OMX_IndexParamJpegMaxSize ] ,                           
	[ "0x7f000046",OMX_IndexConfigRestartMarker ] ,                        
	[ "0x7f000047",OMX_IndexParamImageStampOverlay ] ,                     
	[ "0x7f000048",OMX_IndexParamThumbnail ] ,                             
	[ "0x7f000049",OMX_IndexConfigImageStabilization ] ,                   
	[ "0x7f00004A",OMX_IndexConfigMotionTriggeredImageStabilisation ] ,    
	[ "0x7f00004B",OMX_IndexConfigRedEyeRemoval ] ,                        
	[ "0x7f00004C",OMX_IndexParamHighISONoiseFiler ] ,                     
	[ "0x7f00004D",OMX_IndexParamLensDistortionCorrection ] ,              
	[ "0x7f00004E",OMX_IndexParamLocalBrightnessAndContrast ] ,            
	[ "0x7f00004F",OMX_IndexConfigChromaticAberrationCorrection ] ,        
	[ "0x7f000050",OMX_IndexParamVideoCaptureYUVRange ] ,                  
	[ "0x7f000051",OMX_IndexConfigFocusRegion ] ,                          
	[ "0x7f000052",OMX_IndexConfigImageMotionEstimation ] ,                
	[ "0x7f000053",OMX_IndexParamProcessingOrder ] ,                       
	[ "0x7f000054",OMX_IndexParamFrameStabilisation ] ,                    
	[ "0x7f000055",OMX_IndexParamVideoNoiseFilter ] ,                      
	[ "0x7f000056",OMX_IndexConfigOtherExtraDataControl ] ,                
	[ "0x7f000057",OMX_TI_IndexParamBufferPreAnnouncement ] ,              
	[ "0x7f000058",OMX_TI_IndexConfigBufferRefCountNotification ] ,        
	[ "0x7f000059",OMX_TI_IndexParam2DBufferAllocDimension ] ,             
	[ "0x7f00005A",OMX_IndexConfigWhiteBalanceManualColorTemp ] ,          
	[ "0x7f00005B",OMX_IndexConfigFocusSpotWeighting ] ,                   
	[ "0x7f00005C",OMX_IndexParamSensorOverClockMode ] ,                   
	[ "0x7f00005D",OMX_IndexParamDccUriInfo ] ,                            
	[ "0x7f00005E",OMX_IndexParamDccUriBuffer ] ,                          
	[ "0x7f00005F",OMX_TI_IndexParamVideoIntraRefresh ] ,                  
	[ "0x7f000060",OMX_TI_IndexConfigShutterCallback ] ,                   
	[ "0x7f000061",OMX_TI_IndexParamVarFrameRate ] ,                       
	[ "0x7f000062",OMX_TI_IndexConfigAutoConvergence ] ,                   
	[ "0x7f000063",OMX_TI_IndexConfigRightExposureValue ] ,                
	[ "0x7f000064",OMX_TI_IndexConfigExifTags ] ,                             
	[ "0x7f000065",OMX_TI_IndexParamVideoPayloadHeaderFlag ] ,             
	[ "0x7f000066",OMX_TI_IndexParamVideoIvfMode ] ,                         
	[ "0x7f000067",OMX_TI_IndexConfigCamCapabilities ] ,                   
	[ "0x7f000068",OMX_TI_IndexConfigFacePriority3a ] ,                    
	[ "0x7f000069",OMX_TI_IndexConfigRegionPriority3a ] ,                  
	[ "0x7f00006A",OMX_TI_IndexParamAutoConvergence ] ,                    
	[ "0x7f00006B",OMX_TI_IndexConfigAAAskipBuffer ] ,                     
	[ "0x7f00006C",OMX_TI_IndexParamStereoFrmLayout ] ,                    
	[ "0x7f00006D",OMX_TI_IndexConfigLocalBrightnessContrastEnhance ] ,    
	[ "0x7f00006E",OMX_TI_IndexConfigGlobalBrightnessContrastEnhance ] ,   
	[ "0x7f00006F",OMX_TI_IndexConfigVarFrmRange ] ,                        
	[ "0x7f000070",OMX_TI_IndexParamAVCHRDBufferSizeSetting ] ,			 
	[ "0x7f000071",OMX_TI_IndexConfigAVCHRDBufferSizeSetting ] ,			 
	[ "0x7f000072",OMX_TI_IndexParamAVCEnableLTRMode ] ,                       
	[ "0x7f000073",OMX_TI_IndexConfigAVCEnableNextLTR ] ,                      
	[ "0x7f000074",OMX_TI_IndexConfigAVCUpdateLTRInterval ] ,                  
	[ "0x7f000075",OMX_TI_IndexConfigFocusDistance ] ,                      
	[ "0x7f000076 ",OMX_TI_IndexParamZslHistoryLen ] ,                      
	[ "0x7f000077 ",OMX_TI_IndexConfigZslDelay ] ,                           
	[ "0x7f000078",OMX_TI_IndexConfigMipiCounters ] ,                          
	[ "0x7f000079",OMX_TI_IndexConfigCsiTimingRW ] ,                           
	[ "0x7f00007A",OMX_TI_IndexConfigCSIcomplexIO ] ,                          
	[ "0x7f00007B",OMX_TI_IndexConfigAFScore ] ,                              
	[ "0x7f00007C",OMX_TI_IndexConfigColorBars ] ,							 
	[ "0x7f00007D",OMX_TI_IndexConfigOTPEeprom ] ,                         
	["0x7f00007E",OMX_TI_IndexConfigISPInfo ] ,                                           
);



@OMX_COMMANDTYPE=([0, OMX_CommandStateSet] ,
	[ 1 , OMX_CommandFlush] ,       
	[2, OMX_CommandPortDisable],
	[3, OMX_CommandPortEnable],  
	[4, OMX_CommandMarkBuffer],  
	[0x6F000000, OMX_CommandKhronosExtensions ], 
	[0x7f000000, OMX_CommandVendorStartUnused ],
	[0x7FFFFFFF, OMX_CommandMax ]   

);





open(MYFILE, "callflow.txt");
@lines = <MYFILE>;
close(MYFILE);

open(MYFILE, ">output.txt");
#print MYFILE "\t\t\t A9 \t\t\t         Ducati";
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
		#print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		#print MYFILE  "\n\t\t\t\|";
		$i--;
	}

	if($dir eq "enter")
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		#print MYFILE "Entered",$value;
		#print MYFILE "\n\t\t\t\|------------------------------>\|";
	}
	elsif($dir eq "parameters" )
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		my @val=split /,/,$value;
		my $length=@val;
		if ($line =~ m/nParamIndex/ )
		{
			($ignore,$temp)=$line=~m/(.*nParamIndex=)(0x.*)(,.*)$/;
			print "\n ********* Karthik Debug $temp";
			for ($j=0;$j<128;$j++)
			{
				if ($temp eq $OMX_TI_INDEXTYPE[$j][0])
				{
					$nParamIndexFlag=$j;

					print $nParamIndexFlag,"\t\t\t\t ",$OMX_TI_INDEXTYPE[$j][0],"\n";
					print "\n Yahoooo!!!";
				}
				else
				{
					print "\n ********* Karthik Debug $temp and $OMX_TI_INDEXTYPE[$j][0]";
				}
				#print $OMX_TI_INDEXTYPE {$temp}, "\n";

			}




		}		
		#print MYFILE  "\n\t\t\t\|<------------------------------\|";
		#print MYFILE "\r","\t\tParameters==>";
		for ( $i=2;$i<$length-1;$i++)

		{

			#print MYFILE $val[$i];
		}
		#print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		#print  MYFILE "\n\t\t\t\|\t\t\t\t\|";
		#print  MYFILE "\n\t\t\t\|\t\t\t\t\|";



	}
	else
	{
		my ($field, $value) = $line =~ m/(.*unction)(.*)$/;
		#my ($field, $ignore,$value)= $value =~ m/(.*)(.*with return value)(.*)$/;
		my @val=split /\s/,$value;
		#print MYFILE "Leaving",$val[1]," ",$val[5];
		#print MYFILE  "\n\t\t\t\|<------------------------------\|";
		#print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		#print MYFILE  "\n\t\t\t\|\t\t\t\t\|";
		#print MYFILE  "\n\t\t\t\|\t\t\t\t\|";

	}
}

