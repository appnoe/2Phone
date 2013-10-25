//
//  DBWeatherViewController.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 25.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DBWeatherViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *theLogo;
@property (weak, nonatomic) IBOutlet UILabel *theCity;
@property (weak, nonatomic) IBOutlet UILabel *theTemperature;
@property (weak, nonatomic) IBOutlet UILabel *theWind;
@property (weak, nonatomic) IBOutlet UILabel *theTime;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *theIndicator;

@end
