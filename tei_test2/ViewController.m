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

- (IBAction)how1{
    how *view1 = [[how alloc] initWithNibName:@"how" bundle:nil];
    view1.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:view1 animated:YES];
}

- (IBAction)main1{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)webgo{
    NSString *urlString = [NSString stringWithFormat:@"http://m.naver.com"];
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
}

- (IBAction)googlemap1{
    googlemap *view2 = [[googlemap alloc] initWithNibName:@"googlemap" bundle:nil];
    view2.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:view2 animated:NO];
    //[self presentViewController:view1 animated:NO];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [main2 loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://m.naver.com"]]];
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
