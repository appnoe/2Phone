//
//  DBTwitterViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 15.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import "DBTwitterViewController.h"
#import <Social/Social.h>

@interface DBTwitterViewController ()

@end

@implementation DBTwitterViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sendTweet:(id)sender{
    [sender resignFirstResponder];
    if ([SLComposeViewController isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *theTweet = [SLComposeViewController
                                               composeViewControllerForServiceType:SLServiceTypeTwitter];
        [theTweet setInitialText:_theTweetField.text];
        [self presentViewController:theTweet animated:YES completion:nil];
    }
}

@end
