//
//  how.m
//  tei_test2
//
//  Created by akaon on 12. 8. 9..
//  Copyright (c) 2012년 akaon. All rights reserved.
//

#import "how.h"

@interface how ()

@end

@implementation how

- (IBAction)main1{
    [self dismissModalViewControllerAnimated:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)sendmail
{
    MFMailComposeViewController *mailsome=[[MFMailComposeViewController alloc] init];
    mailsome.mailComposeDelegate=self;
    if ([MFMailComposeViewController canSendMail]){
        
        [mailsome setToRecipients:[NSArray arrayWithObjects:@"tei_tokyo@naver.com",nil]];
        [mailsome setSubject:@"제목 입력"];
        [mailsome setMessageBody:@"내용 입력" isHTML:NO];
        [self presentModalViewController:mailsome animated:YES];
        
    }
}
-(void) mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissModalViewControllerAnimated:YES];
    if(result == MFMailComposeResultFailed){
        UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"Can not send mail" message:@"Sorry" delegate:self cancelButtonTitle:@"Okey" otherButtonTitles:nil];
        
        [alert show];
        //[alert release];
    }
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
