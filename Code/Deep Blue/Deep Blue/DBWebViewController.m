//
//  DBWebViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 11.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import "DBWebViewController.h"

@interface DBWebViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *theWebView;

@end

@implementation DBWebViewController

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString *fullURL = @"http://www.deep-blue-diving.com/";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest 
                                requestWithURL:url];
    [self.theWebView loadRequest:requestObj];
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

@end
