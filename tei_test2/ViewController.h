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

@interface ViewController : UIViewController <AVAudioPlayerDelegate>
{
    AVAudioPlayer *sound;
}

-(IBAction)ping1;

-(IBAction)how1;

@end

