//
//  Header.h
//  DevChat
//
//  Created by Mago Nicolas Palacios on 8/18/16.
//  Copyright © 2016 Mago Nicolas Palacios. All rights reserved.
//

#ifndef Header_h
#define Header_h

@protocol AAPLCameraVCDelegate <NSObject>

-(void)shouldEnableRecordUI:(BOOL)enable;
-(void)shouldEnableCameraUI:(BOOL)enable;
-(void)canStartRecording;
-(void)recordingHasStarted;

@end

#endif /* Header_h */
