//
//  TCP55ViewController.m
//  AnimationRyu
//
//  Created by Cindy Flores on 1/22/13.
//  Copyright (c) 2013 Cindy Flores. All rights reserved.
//

#import "TCP55ViewController.h"

@interface TCP55ViewController ()

@end

@implementation TCP55ViewController
/*- (IBAction)btnPlay:(id)sender {
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"Select", CFSTR ("caf"), NULL                                     );
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
}*/
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURLRef = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"Select", CFSTR ("m4r"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID(soundFileURLRef, &soundID);
    AudioServicesPlaySystemSound(soundID);
    
    
    NSArray * imageArray  = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"1.png"],
                             [UIImage imageNamed:@"2.png"],
                             [UIImage imageNamed:@"3.png"],
                             [UIImage imageNamed:@"4.png"],
                             [UIImage imageNamed:@"5.png"],
                             [UIImage imageNamed:@"6.png"],
                             [UIImage imageNamed:@"7.png"],
                             [UIImage imageNamed:@"8.png"],
                             [UIImage imageNamed:@"9.png"],
                             [UIImage imageNamed:@"10.png"],
                             [UIImage imageNamed:@"11.png"],
                             [UIImage imageNamed:@"12.png"],
                             nil];
	UIImageView * ryuJump = [[UIImageView alloc] initWithFrame:
                             CGRectMake(100, 125, 150, 130)];
	ryuJump.animationImages = imageArray;
	ryuJump.animationDuration = 1.1;
	ryuJump.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:ryuJump];
	[ryuJump startAnimating];
    
    [super viewDidLoad];
	NSArray * imageArray1  = [[NSArray alloc] initWithObjects:
                             [UIImage imageNamed:@"dalsin1.png"],
                             [UIImage imageNamed:@"dalsin2.png"],
                             [UIImage imageNamed:@"dalsin3.png"],
                             [UIImage imageNamed:@"dalsin4.png"],
                             [UIImage imageNamed:@"dalsin5.png"],
                             [UIImage imageNamed:@"dalsin6.png"],
                             [UIImage imageNamed:@"dalsin7.png"],
                             [UIImage imageNamed:@"dalsin8.png"],
                             [UIImage imageNamed:@"dalsin9.png"],
                             [UIImage imageNamed:@"dalsin10.png"],
                             [UIImage imageNamed:@"dalsin11.png"],
                             [UIImage imageNamed:@"dalsin12.png"],
                             nil];
	UIImageView * dalsinJump = [[UIImageView alloc] initWithFrame:
                             CGRectMake(200, 147, 150, 130)];
	dalsinJump.animationImages = imageArray1;
	dalsinJump.animationDuration = 1.1;
	dalsinJump.contentMode = UIViewContentModeBottomLeft;
	[self.view addSubview:dalsinJump];
	[dalsinJump startAnimating];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnStop:(id)sender {
    stop = true;
}
@end
