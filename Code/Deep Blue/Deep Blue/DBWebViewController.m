,,//
//  DBWebViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 19.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import "DBWebViewController.h"


@interface DBWebViewController ()

@end

@implementation DBWebViewController

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
    NSString *fullURL = @"http://www.deep-blue-diving.com/";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [self.theWebView loadRequest:requestObj];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
