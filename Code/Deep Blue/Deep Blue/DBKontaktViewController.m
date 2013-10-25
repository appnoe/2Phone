//
//  DBKontaktViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 23.01.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import "DBKontaktViewController.h"

@interface DBKontaktViewController ()

@end

@implementation DBKontaktViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)callCaleta:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0034928163712"]];
}

- (IBAction)callMobile:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0034606275468"]];
}

- (IBAction)composeEmail:(id)sender {
    if ([MFMailComposeViewController canSendMail])
    {
        MFMailComposeViewController *theMailInterface = [[MFMailComposeViewController alloc] init];
        theMailInterface.mailComposeDelegate = self;
        [theMailInterface setToRecipients:[NSArray arrayWithObject:@"info@deep-blue-diving.com"]];
        [theMailInterface setSubject:@"Gesendet über Deep Blue App"];
        [theMailInterface setMessageBody:@"Bitte Nachricht eingeben!" isHTML:NO];
        [self presentViewController:theMailInterface animated:YES completion:nil];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Problem!"
                                                        message:@"Kein Email-Konto eingerichtet!"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
}

- (void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error
{
	[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)openWebsite:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.deep-blue-diving.com/"]];
}

- (IBAction)displayRoute:(id)sender {
}
@end
