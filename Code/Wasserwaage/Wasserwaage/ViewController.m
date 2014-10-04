//
//  ViewController.m
//  Wasserwaage
//
//  Created by Klaus Rodewig on 04.07.13.
//  Copyright (c) 2013 Foobar. All rights reserved.
//

#import "ViewController.h"
#import <CoreMotion/CoreMotion.h>

@interface ViewController ()
    @property CMMotionManager *theManager;
    @property NSOperationQueue *theQueue;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    DLog(@"%s",__PRETTY_FUNCTION__);
    self.theManager = [[CMMotionManager alloc] init];
    self.theManager.accelerometerUpdateInterval  = 0.1;
    self.theQueue = [NSOperationQueue currentQueue];
    [self.theManager startAccelerometerUpdatesToQueue:self.theQueue
                                          withHandler:^(CMAccelerometerData *accelerometerData, NSError *error) {
                                              CMAcceleration theAccelerationData = accelerometerData.acceleration;
                                              self.theBubbleView.xMotion = theAccelerationData.x;
                                              self.theBubbleView.yMotion = theAccelerationData.y;
                                              [self.theBubbleView setNeedsDisplay];
                                          }];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillDisappear:(BOOL)animated
{
    [self.theManager stopAccelerometerUpdates];
}

@end
