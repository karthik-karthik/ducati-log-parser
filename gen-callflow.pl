


$depth = 0;
sub printlline($$);
@OMX_TI_INDEXTYPE=([ "0x7F000001",OMX_IndexConfigAutoPauseAfterCapture]  ,
    [ "0x7F000002",OMX_TI_IndexConfigChannelName   ] ,  
    [ "0x7F000003",OMX_TI_IndexParamJPEGUncompressedMode  ] ,               
    [ "0x7F000004",OMX_TI_IndexParamJPEGCompressedMode  ] ,                 
    [ "0x7F000005",OMX_TI_IndexParamDecodeSubregion ] ,                    
    [ "0x7F000006",OMX_TI_IndexParamVideoDataSyncMode ] ,                
    [ "0x7F000007",OMX_TI_IndexParamVideoNALUsettings ] ,                 
    [ "0x7F000008",OMX_TI_IndexParamVideoMEBlockSize ] ,                   
    [ "0x7F000009",OMX_TI_IndexParamVideoIntraPredictionSettings ] ,      
    [ "0x7F00000A",OMX_TI_IndexParamVideoEncoderPreset ] ,                
    [ "0x7F00000B",OMX_TI_IndexParamVideoFrameDataContentSettings ] ,     
    [ "0x7F00000C",OMX_TI_IndexParamVideoTransformBlockSize ] ,           
    [ "0x7F00000D",OMX_TI_IndexParamVideoVUIsettings ] ,                  
    [ "0x7F00000E",OMX_TI_IndexParamVideoAdvancedFMO ] ,                   
    [ "0x7F00000F",OMX_TI_IndexConfigVideoPixelInfo ] ,                   
    [ "0x7F000011",OMX_TI_IndexConfigVideoMESearchRange ] ,               
    [ "0x7F000012",OMX_TI_IndexConfigVideoQPSettings ] ,                 
    [ "0x7F000013",OMX_TI_IndexConfigSliceSettings ] ,                   
    [ "0x7F000014",OMX_TI_IndexParamAVCInterlaceSettings ] ,                     
    [ "0x7F000015",OMX_TI_IndexParamStereoInfo2004Settings ] ,               
    [ "0x7F000016",OMX_TI_IndexParamStereoFramePacking2010Settings ] ,                  
    [ "0x7F000017",OMX_IndexConfigSensorSelect ] ,                          
    [ "0x7F000018",OMX_IndexConfigFlickerCancel ] ,                        
    [ "0x7F000019",OMX_IndexConfigSensorCal ] ,                            
    [ "0x7F00001A",OMX_IndexConfigISOSetting ] ,                           
    [ "0x7F00001B",OMX_TI_IndexConfigSceneMode ] ,                         
    [ "0x7F00001C",OMX_IndexConfigDigitalZoomSpeed ] ,                     
    [ "0x7F00001D",OMX_IndexConfigDigitalZoomTarget ] ,                    
    [ "0x7F00001E",OMX_IndexConfigCommonScaleQuality ] ,                   
    [ "0x7F00001F",OMX_IndexConfigCommonDigitalZoomQuality ] ,             
    [ "0x7F000020",OMX_IndexConfigOpticalZoomSpeed ] ,                     
    [ "0x7F000021",OMX_IndexConfigOpticalZoomTarget ] ,                    
    [ "0x7F000022",OMX_IndexConfigSmoothZoom ] ,                           
    [ "0x7F000023",OMX_IndexConfigBlemish ] ,                              
    [ "0x7F000024",OMX_IndexConfigExtCaptureMode ] ,                       
    [ "0x7F000024",OMX_IndexConfigExtPrepareCapturing ] ,                  
    [ "0x7F000025",OMX_IndexConfigExtCapturing ] ,                         
    [ "0x7F000026",OMX_IndexCameraOperatingMode ] ,                        
    [ "0x7F000027",OMX_IndexParamCameraOperatingMode  ] ,  
    [ "0x7F000028",OMX_IndexConfigDigitalFlash ] ,                         
    [ "0x7F000029",OMX_IndexConfigPrivacyIndicator ] ,                     
    [ "0x7F00002A",OMX_IndexConfigTorchMode ] ,                            
    [ "0x7F00002B ",OMX_IndexConfigSlowSync ] ,                             
    [ "0x7F00002C",OMX_IndexConfigExtFocusRegion ] ,                       
    [ "0x7F00002D",OMX_IndexConfigFocusAssist ] ,                          
    [ "0x7F00002E",OMX_IndexConfigImageFocusLock ] ,                       
    [ "0x7F00002F",OMX_IndexConfigImageWhiteBalanceLock ] ,                
    [ "0x7F000030",OMX_IndexConfigImageExposureLock ] ,                    
    [ "0x7F000031",OMX_IndexConfigImageAllLock ] ,                         
    [ "0x7F000032",OMX_IndexConfigImageDeNoiseLevel ] ,                    
    [ "0x7F000033",OMX_IndexConfigSharpeningLevel ] ,                      
    [ "0x7F000034",OMX_IndexConfigDeBlurringLevel ] ,                      
    [ "0x7F000035",OMX_IndexConfigChromaCorrection ] ,                     
    [ "0x7F000036",OMX_IndexConfigDeMosaicingLevel ] ,                     
    [ "0x7F000037",OMX_IndexConfigCommonWhiteBalanceGain ] ,               
    [ "0x7F000038",OMX_IndexConfigCommonRGB2RGB ] ,                
    [ "0x7F000039",OMX_IndexConfigCommonRGB2YUV ] ,                
    [ "0x7F00003A",OMX_IndexConfigCommonYUV2RGB ] ,                        
    [ "0x7F00003B",OMX_IndexConfigCommonGammaTable ] ,                     
    [ "0x7F00003C",OMX_IndexConfigImageFaceDetection ] ,                   
    [ "0x7F00003D",OMX_IndexConfigImageBarcodeDetection ] ,                
    [ "0x7F00003E",OMX_IndexConfigImageSmileDetection ] ,                  
    [ "0x7F00003F",OMX_IndexConfigImageBlinkDetection ] ,                  
    [ "0x7F000040",OMX_IndexConfigImageFrontObjectDetection ] ,            
    [ "0x7F000041",OMX_IndexConfigHistogramMeasurement ] ,                 
    [ "0x7F000042",OMX_IndexConfigDistanceMeasurement ] ,                  
    [ "0x7F000043",OMX_IndexConfigSnapshotToPreview ] ,                    
    [ "0x7F000044",OMX_IndexConfigJpegHeaderType  ] ,                      
    [ "0x7F000045",OMX_IndexParamJpegMaxSize ] ,                           
    [ "0x7F000046",OMX_IndexConfigRestartMarker ] ,                        
    [ "0x7F000047",OMX_IndexParamImageStampOverlay ] ,                     
    [ "0x7F000048",OMX_IndexParamThumbnail ] ,                             
    [ "0x7F000049",OMX_IndexConfigImageStabilization ] ,                   
    [ "0x7F00004A",OMX_IndexConfigMotionTriggeredImageStabilisation ] ,    
    [ "0x7F00004B",OMX_IndexConfigRedEyeRemoval ] ,                        
    [ "0x7F00004C",OMX_IndexParamHighISONoiseFiler ] ,                     
    [ "0x7F00004D",OMX_IndexParamLensDistortionCorrection ] ,              
    [ "0x7F00004E",OMX_IndexParamLocalBrightnessAndContrast ] ,            
    [ "0x7F00004F",OMX_IndexConfigChromaticAberrationCorrection ] ,        
    [ "0x7F000050",OMX_IndexParamVideoCaptureYUVRange ] ,                  
    [ "0x7F000051",OMX_IndexConfigFocusRegion ] ,                          
    [ "0x7F000052",OMX_IndexConfigImageMotionEstimation ] ,                
    [ "0x7F000053",OMX_IndexParamProcessingOrder ] ,                       
    [ "0x7F000054",OMX_IndexParamFrameStabilisation ] ,                    
    [ "0x7F000055",OMX_IndexParamVideoNoiseFilter ] ,                      
    [ "0x7F000056",OMX_IndexConfigOtherExtraDataControl ] ,                
    [ "0x7F000057",OMX_TI_IndexParamBufferPreAnnouncement ] ,              
    [ "0x7F000058",OMX_TI_IndexConfigBufferRefCountNotification ] ,        
    [ "0x7F000059",OMX_TI_IndexParam2DBufferAllocDimension ] ,             
    [ "0x7F00005A",OMX_IndexConfigWhiteBalanceManualColorTemp ] ,          
    [ "0x7F00005B",OMX_IndexConfigFocusSpotWeighting ] ,                   
    [ "0x7F00005C",OMX_IndexParamSensorOverClockMode ] ,                   
    [ "0x7F00005D",OMX_IndexParamDccUriInfo ] ,                            
    [ "0x7F00005E",OMX_IndexParamDccUriBuffer ] ,                          
    [ "0x7F00005F",OMX_TI_IndexParamVideoIntraRefresh ] ,                  
    [ "0x7F000060",OMX_TI_IndexConfigShutterCallback ] ,                   
    [ "0x7F000061",OMX_TI_IndexParamVarFrameRate ] ,                       
    [ "0x7F000062",OMX_TI_IndexConfigAutoConvergence ] ,                   
    [ "0x7F000063",OMX_TI_IndexConfigRightExposureValue ] ,                
    [ "0x7F000064",OMX_TI_IndexConfigExifTags ] ,                             
    [ "0x7F000065",OMX_TI_IndexParamVideoPayloadHeaderFlag ] ,             
    [ "0x7F000066",OMX_TI_IndexParamVideoIvfMode ] ,                         
    [ "0x7F000067",OMX_TI_IndexConfigCamCapabilities ] ,                   
    [ "0x7F000068",OMX_TI_IndexConfigFacePriority3a ] ,                    
    [ "0x7F000069",OMX_TI_IndexConfigRegionPriority3a ] ,                  
    [ "0x7F00006A",OMX_TI_IndexParamAutoConvergence ] ,                    
    [ "0x7F00006B",OMX_TI_IndexConfigAAAskipBuffer ] ,                     
    [ "0x7F00006C",OMX_TI_IndexParamStereoFrmLayout ] ,                    
    [ "0x7F00006D",OMX_TI_IndexConfigLocalBrightnessContrastEnhance ] ,    
    [ "0x7F00006E",OMX_TI_IndexConfigGlobalBrightnessContrastEnhance ] ,   
    [ "0x7F00006F",OMX_TI_IndexConfigVarFrmRange ] ,                        
    [ "0x7F000070",OMX_TI_IndexParamAVCHRDBufferSizeSetting ] ,			 
    [ "0x7F000071",OMX_TI_IndexConfigAVCHRDBufferSizeSetting ] ,			 
    [ "0x7F000072",OMX_TI_IndexParamAVCEnableLTRMode ] ,                       
    [ "0x7F000073",OMX_TI_IndexConfigAVCEnableNextLTR ] ,                      
    [ "0x7F000074",OMX_TI_IndexConfigAVCUpdateLTRInterval ] ,                  
    [ "0x7F000075",OMX_TI_IndexConfigFocusDistance ] ,                      
   [ "0x7F000076 ",OMX_TI_IndexParamZslHistoryLen ] ,                      
   [ "0x7F000077 ",OMX_TI_IndexConfigZslDelay ] ,                           
    [ "0x7F000078",OMX_TI_IndexConfigMipiCounters ] ,                          
    [ "0x7F000079",OMX_TI_IndexConfigCsiTimingRW ] ,                           
	[ "0x7F00007A",OMX_TI_IndexConfigCSIcomplexIO ] ,                          
	[ "0x7F00007B",OMX_TI_IndexConfigAFScore ] ,                              
	[ "0x7F00007C",OMX_TI_IndexConfigColorBars ] ,							 
    [ "0x7F00007D",OMX_TI_IndexConfigOTPEeprom ] ,                         
    ["0x7F00007E",OMX_TI_IndexConfigISPInfo ] ,                                           
);



@OMX_COMMANDTYPE=([0, OMX_CommandStateSet] ,
  [ 1 , OMX_CommandFlush] ,       
    [2, OMX_CommandPortDisable] ,
    [3, OMX_CommandPortEnable] ,  
    [4, OMX_CommandMarkBuffer] ,  
    [0x6F000000, OMX_CommandKhronosExtensions ] , 
    [0x7F000000, OMX_CommandVendorStartUnused ] ,
    [7, OMX_CommandMax , 0X7FFFFFFF]   
    
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
				for ($j=0;$j<128;$j++)
				{
					if ($temp=~ m/0x7F000025/;#$OMX_TI_INDEXTYPE[$j][0]/)
					{
						$nParamIndexFlag=$j;

					 print $nParamIndexFlag,"\t\t\t\t ",$OMX_TI_INDEXTYPE[$j][0],"\n";
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

