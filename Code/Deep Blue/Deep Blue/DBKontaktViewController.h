//
//  DBKontaktViewController.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 23.01.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface DBKontaktViewController : UIViewController <MFMailComposeViewControllerDelegate>
- (IBAction)callCaleta:(id)sender;
- (IBAction)callMobile:(id)sender;
- (IBAction)composeEmail:(id)sender;
- (IBAction)openWebsite:(id)sender;
- (IBAction)displayRoute:(id)sender;

@end
