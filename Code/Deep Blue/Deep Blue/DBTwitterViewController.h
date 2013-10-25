//
//  DBTwitterViewController.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 15.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBTwitterViewController : UIViewController
-(IBAction)sendTweet:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *theTweetField;
@end
