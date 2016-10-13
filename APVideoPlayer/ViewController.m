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
    
    
//    fileURL = [[NSBundle mainBundle]URLForResource:@"meraVideo" withExtension:@"mp4"];
//    
//    NSLog(@"%@",fileURL);
//    
//    player= [[AVPlayer alloc]initWithURL:fileURL];
//    
//    moviePlayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
//    
//    [moviePlayerLayer setFrame:CGRectMake(100, 100, 300, 160)];
//    
//    [self.view.layer addSublayer:moviePlayerLayer];
//    
//    
//

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)playPauseButton:(id)sender {
    
    PlayButton = sender;
    
    

    if (PlayButton.tag == 0) {
        
        fileURL = [[NSBundle mainBundle]URLForResource:@"Hyundai" withExtension:@"mp4"];
        
      //  NSLog(@"%@",fileURL);
        
        player = [[AVPlayer alloc]initWithURL:fileURL];
        
        
        moviePlayerLayer = [AVPlayerLayer playerLayerWithPlayer:player];
        
        //[playerLayer setFrame:CGRectMake(0, 250, 420, 200)];
        
        [moviePlayerLayer setFrame:_myView.bounds];
        
        
        
        [self.myView.layer addSublayer:moviePlayerLayer];
        self.myView.clipsToBounds = YES;

        

        [player play];
        
        
        PlayButton.tag =1;
    }
    
    else{
        
        [player pause];

        PlayButton.tag = 0;
        
        
    }

    
    
}

- (IBAction)stopButton:(id)sender {
    
   // player = [[AVPlayer alloc]initWithURL:fileURL];

}



@end
