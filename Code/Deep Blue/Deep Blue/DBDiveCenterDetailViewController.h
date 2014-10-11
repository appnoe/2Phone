//
//  DBDiveCenterDetailViewController.h
//  Deep Blue
//
//  Created by Klaus Rodewig on 10.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBDiveCenter.h"
#import <MapKit/MapKit.h>

@interface DBDiveCenterDetailViewController : UIViewController <MKMapViewDelegate>
@property (retain) DBDiveCenter *theCenter;
@property (weak, nonatomic) IBOutlet UILabel *divecenterName;
@property (weak, nonatomic) IBOutlet UILabel *position;
@property (weak, nonatomic) IBOutlet UIImageView *divecenterImage;
@property (weak, nonatomic) IBOutlet MKMapView *theMapView;
@end
