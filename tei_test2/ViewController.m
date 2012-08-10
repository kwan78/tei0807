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
- (IBAction)changevolume{
    [sound setVolume:slider.value];
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


/* //alertview로 인해 필요 없어졌음
- (IBAction)webgo{
    NSString *urlString = [NSString stringWithFormat:@"http://m.naver.com"];
    NSURL *url = [NSURL URLWithString:urlString];
    [[UIApplication sharedApplication] openURL:url];
}
*/
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

    
    aniview1.animationImages = [NSArray arrayWithObjects:
                                [UIImage imageNamed:@"DSC_0184.png"],
                                [UIImage imageNamed:@"DSC_0185.png"],
                                [UIImage imageNamed:@"DSC_0186.png"],
                                [UIImage imageNamed:@"DSC_0187.png"], nil];
    aniview1.animationDuration=1.00; 
    aniview1.animationRepeatCount=0;
    aniview1.startAnimating;
    [self.view addSubview:aniview1];
}


- (void)q1
{
    UIAlertView *one1=[[UIAlertView alloc] initWithTitle:@"확인" message:@"네이버\n방문 하겠니?" delegate:self cancelButtonTitle:nil otherButtonTitles:@"안가요",@"가보죠", nil];
    [one1 show];
    
}

- (IBAction)callsms{
    address *view3 = [[address alloc] initWithNibName:@"address" bundle:nil];
    view3.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:view3 animated:NO];
}


- (IBAction)main1{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)
select1
{
    if(select1 == 1)
    {
        NSString *urlString=[NSString stringWithFormat:@"http://m.naver.com"];
        NSURL *url=[NSURL URLWithString:urlString];
        [[UIApplication sharedApplication] openURL:url];
    }
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
