//
//  ViewController.m
//  Kapitel 8
//
//  Created by Klaus Rodewig on 12.10.14.
//  Copyright (c) 2014 Appnoe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *thePositionLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.locationManager = [[CLLocationManager alloc] init];
    if([self.locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    self.locationManager.delegate = self;
    self.locationManager.distanceFilter = 10;
    [self.locationManager startUpdatingLocation];
    
    theManager = [[CMMotionManager alloc] init];
    theManager.accelerometerUpdateInterval  = 1.0/1.0;
    theQueue = [NSOperationQueue currentQueue];
    [theManager startAccelerometerUpdatesToQueue:theQueue
                                    withHandler:^(CMAccelerometerData *accelerometerData, 
                                                  NSError *error) {
                                        CMAcceleration theAccelerationData = accelerometerData.acceleration;
                                        NSNumber *theAngle = [NSNumber numberWithFloat:atan2((theAccelerationData.x), -(theAccelerationData.y))];
                                        [self.theImage setTransform:CGAffineTransformMakeRotation (-[theAngle floatValue])];

                                    }];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    self.thePositionLabel.text = [NSString
                               stringWithFormat:@"%f:%f", 
                               newLocation.coordinate.latitude, 
                               newLocation.coordinate.longitude];
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error {
    NSLog(@"Fehler bei der Standortbestimmung: %@", error);
    [manager stopUpdatingLocation];
}

@end
