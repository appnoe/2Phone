//
//  ViewController.h
//  Kapitel 8
//
//  Created by Klaus Rodewig on 25.09.13.
//  Copyright (c) 2013 KMR. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <CoreMotion/CoreMotion.h>

@interface ViewController : UIViewController <CLLocationManagerDelegate>
{
    CMMotionManager     *theManager;
    NSOperationQueue    *theQueue;
}
@property (weak, nonatomic) IBOutlet UILabel *positionLabel;
@property (weak, nonatomic) IBOutlet UIImageView *theImage;
@property (nonatomic, strong) CLLocationManager *locationManager;
@end
