//
//  ViewController.m
//  Hallo Welt
//
//  Created by Klaus Rodewig on 04.10.14.
//  Copyright (c) 2014 Cocaneheads. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)button:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.label.text = @"Bitte Button drücken!";
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)button:(id)sender {
    self.label.text = @"Hallo Welt";
}
@end
