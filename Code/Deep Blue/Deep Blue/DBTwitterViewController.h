//
//  DBTwitterViewController.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 11.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBTwitterViewController : UIViewController
-(IBAction)sendTweet:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *theTweetField;
@end
