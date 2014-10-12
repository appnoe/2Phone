//
//  ViewController.m
//  Wasserwaage
//
//  Created by Klaus Rodewig on 12.10.14.
//  Copyright (c) 2014 Appnoe. All rights reserved.
//

#import "ViewController.h"
#import <CoreMotion/CoreMotion.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet WWView *theBubbleView;
@property CMMotionManager *theManager;
@property NSOperationQueue *theQueue;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.theManager = [[CMMotionManager alloc] init];
    self.theManager.accelerometerUpdateInterval  = 0.1;
    self.theQueue = [NSOperationQueue currentQueue];
    self.theQueue = [NSOperationQueue currentQueue];
    [self.theManager startAccelerometerUpdatesToQueue: 
     self.theQueue withHandler:^(CMAccelerometerData
                                *accelerometerData, NSError *error) {
         CMAcceleration theAccelerationData = 
         accelerometerData.acceleration;
         self.theBubbleView.xMotion = theAccelerationData.x;
         self.theBubbleView.yMotion = theAccelerationData.y;
         [self.theBubbleView setNeedsDisplay];
     }];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.theManager stopAccelerometerUpdates];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
