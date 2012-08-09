//
//  ViewController.h
//  tei_test2
//
//  Created by akaon on 12. 8. 3..
//  Copyright (c) 2012년 akaon. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <AVFoundation/AVFoundation.h>
#import "how.h"
#import "googlemap.h"

@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVAudioPlayer *sound;
    
    IBOutlet UIWebView *main2;
}

-(IBAction)ping1;

-(IBAction)how1;

-(IBAction)webgo;

-(IBAction)googlemap1;


@end

