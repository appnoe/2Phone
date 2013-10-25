//
//  DBDiveCenterDetailViewController.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 03.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBDiveCenter.h"
#import <MapKit/MapKit.h>


@interface DBDiveCenterDetailViewController : UIViewController <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *theMapView;
@property (weak, nonatomic) IBOutlet UILabel *divecenterName;
@property (weak, nonatomic) IBOutlet UILabel *position;
@property (weak, nonatomic) IBOutlet UIImageView *divecenterImage;
@property (retain) DBDiveCenter *theCenter;
@end
