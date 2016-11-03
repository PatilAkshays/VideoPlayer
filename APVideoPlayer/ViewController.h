//
//  ViewController.h
//  APVideoPlayer
//
//  Created by Mac on 18/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
      AVPlayer *player;
    AVPlayerLayer *moviePlayerLayer;
    
    NSURL *fileURL;
}

- (IBAction)playPauseButton:(id)sender;

- (IBAction)stopButton:(id)sender;




@end

