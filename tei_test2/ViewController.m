//
//  ViewController.m
//  tei_test2
//
//  Created by akaon on 12. 8. 3..
//  Copyright (c) 2012년 akaon. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)ping1{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"Westlife - 01 - You Raise Me Up - 320k" ofType:@"mp3"];
    sound=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [sound play];
}

- (IBAction)ping2{
    NSString *path=[[NSBundle mainBundle] pathForResource:@"Westlife - 01 - You Raise Me Up - 320k" ofType:@"mp3"];
    sound=[[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path] error:NULL];
    [sound stop];
}

- (void)loadView
{
    CGRect appRect = [[UIScreen mainScreen] applicationFrame];
    contentView = [[UIView alloc] initWithFrame:appRect];
    contentView.backgroundColor = [UIColor whiteColor];
    
    contentView.autoresizesSubviews = YES;
    contentView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    self.view = contentView;
    [contentView release];
    
    appRect.origin = CGPointMake(0.0f, 0.0f);
    
    UIView *subview = [[UIView alloc] initwithframe:cGRectInset(appRect,32.0f, 32.0f)];
    subview.backgroundColor = [UICo lightGrayColor];
    [contentView addSubvies:subview];
    [subview release];
    
    UIView *subview = [[UIView alloc] initwithframe:cGRectInset(appRect,64.0f, 64.0f)];
    subview.backgroundColor = [UICo lightGrayColor];
    [contentView addSubvies:subview];
    [subview release];

    UIView *subview = [[UIView alloc] initwithframe:cGRectInset(appRect,96.0f, 96.0f)];
    subview.backgroundColor = [UICo lightGrayColor];
    [contentView addSubvies:subview];
    [subview release];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
