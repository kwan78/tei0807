//
//  address.m
//  tei_test2
//
//  Created by akaon on 12. 8. 10..
//  Copyright (c) 2012년 akaon. All rights reserved.
//

#import "address.h"

@interface address ()

@end

@implementation address

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)call1:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://010-4666-7395"]];
}
-(IBAction)sms1:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://010-4666-7395"]];
}
-(IBAction)call2:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://010-3578-3760"]];
}
-(IBAction)sms2:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://010-3578-3760"]];
}
-(IBAction)call3:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://010-4666-7395"]];
}
-(IBAction)sms3:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://010-4666-7395"]];
}
-(IBAction)call4:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://010-4666-7395"]];
}
-(IBAction)sms4:(id)sender{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"sms://010-4666-7395"]];
}


- (IBAction)main1{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
