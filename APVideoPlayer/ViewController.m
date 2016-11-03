//
//  ViewController.m
//  APVideoPlayer
//
//  Created by Mac on 18/07/1938 Saka.
//  Copyright © 1938 Saka Aksh. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    fileURL = [[NSBundle mainBundle]URLForResource:@"India" withExtension:@"mp4"];
    
    NSLog(@"%@",fileURL);
    
    player= [[AVPlayer alloc]initWithURL:fileURL];
    
    moviePlayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    
 
    
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}



- (IBAction)playPauseButton:(id)sender {
    
   UIButton *PlayButton = sender;
    
        
           if (PlayButton.tag == 100) {
        [player play];        
               
        [moviePlayerLayer setFrame:CGRectMake(0, 250, 420, 200)];
               
        [self.view.layer addSublayer:moviePlayerLayer];

        PlayButton.tag =101;
               
    }
    
    else if (PlayButton.tag == 101) {
        //pause
        [player pause];

        PlayButton.tag = 100;
        

    }

    
    
}

- (IBAction)stopButton:(id)sender {
    
    [player pause];

    
    player= [[AVPlayer alloc]initWithURL:fileURL];
    
    moviePlayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
    
    
    
    
}



@end
