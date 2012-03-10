@OMX_COMMANDTYPE=([0, OMX_CommandStateSet],[1,OMX_CommandFlush],[2, OMX_CommandPortDisable],[3, OMX_CommandPortEnable],
 			          [4, OMX_CommandMarkBuffer],[0x6f000000, OMX_CommandKhronosExtensions ],[0x7f000000, OMX_CommandVendorStartUnused ],
                                  [0x7fffffff, OMX_CommandMax]);

@OMX_STATETYPE=
(
    [0,OMX_StateInvalid],    
    [1,OMX_StateLoaded],      
    [2,OMX_StateIdle],        
    [3,OMX_StateExecuting],   
    [4,OMX_StatePause],       
    [5,OMX_StateWaitForResources], 
    [0x6F000000,OMX_StateKhronosExtensions], 
    [0x7F000000,OMX_StateVendorStartUnused],
    [0x7FFFFFFF,OMX_StateMax]
);
