//
//  DBTwitterViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 11.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import "DBTwitterViewController.h"
#import <Social/Social.h>

@interface DBTwitterViewController ()

@end

@implementation DBTwitterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)sendTweet:(id)sender{
    [sender resignFirstResponder];
    if ([SLComposeViewController 
         isAvailableForServiceType:SLServiceTypeTwitter])
    {
        SLComposeViewController *theTweet = 
        [SLComposeViewController composeViewControllerForServiceType: 
         SLServiceTypeTwitter];
        [theTweet setInitialText:_theTweetField.text];
        [self presentViewController:theTweet 
                           animated:YES completion:nil];
    } else {
        NSLog(@"No Twitter, no future!");
    }

}

@end
