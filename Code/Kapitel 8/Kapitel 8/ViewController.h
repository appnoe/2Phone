//
//  ViewController.h
//  Kapitel 8
//
//  Created by Klaus Rodewig on 12.10.14.
//  Copyright (c) 2014 Appnoe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
    CMMotionManager     *theManager;
    NSOperationQueue    *theQueue;
}
@property (nonatomic, strong) CLLocationManager *locationManager;
@property (weak, nonatomic) IBOutlet UIImageView *theImage;

@end

