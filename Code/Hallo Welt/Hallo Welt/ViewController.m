//
//  ViewController.m
//  Hallo Welt
//
//  Created by Klaus Rodewig on 21.10.12.
//  Copyright (c) 2012 Foobar Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.label.text = @"Bitte Button drücken!";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    self.label.text = @"Hallo Welt";
}
@end
