//
//  DBKontaktViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 06.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import "DBKontaktViewController.h"
#import <MessageUI/MessageUI.h>

@interface DBKontaktViewController () <MFMailComposeViewControllerDelegate>
- (IBAction)callCaleta:(id)sender;
- (IBAction)openURL:(id)sender;
- (IBAction)composeEmail:(id)sender;

@end

@implementation DBKontaktViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)callCaleta:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:0034928163712"]];
}

- (IBAction)openURL:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.deep-blue-diving.com/"]];
}

- (IBAction)composeEmail:(id)sender {
    if ([MFMailComposeViewController canSendMail]) {
        MFMailComposeViewController *theMailInterface = [[ MFMailComposeViewController alloc] init];
        theMailInterface.mailComposeDelegate = self;
        [theMailInterface setToRecipients:[ NSArray arrayWithObject:@"IHRE MAILADRESSE"]];
        [theMailInterface setSubject:@"Gesendet über Deep Blue App"]; [theMailInterface setMessageBody:@"Bitte Nachricht eingeben!" isHTML:NO]
        ;
        [
         self presentViewController:theMailInterface animated:YES completion:nil]; } else {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Problem!"
                                                            message:@"Kein E-Mail-Konto eingerichtet!"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
}

- (void)mailComposeController:(MFMailComposeViewController*)
controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
