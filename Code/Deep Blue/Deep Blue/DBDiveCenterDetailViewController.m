//
//  DBDiveCenterDetailViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 10.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import "DBDiveCenterDetailViewController.h"

@interface DBDiveCenterDetailViewController ()

@end

@implementation DBDiveCenterDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.divecenterName.text = self.theCenter.name;
    self.position.text = [NSString stringWithFormat: 
                          @"%@:%@", self.theCenter.latitude, 
                          self.theCenter.longitude];
    self.divecenterImage.image = self.theCenter.image;
    self.theMapView.delegate = self;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    CLLocationCoordinate2D theRegion;
    theRegion.latitude = 
    [self.theCenter.latitude doubleValue];
    theRegion.longitude= 
    [self.theCenter.longitude doubleValue];
    MKCoordinateRegion viewRegion = 
    MKCoordinateRegionMakeWithDistance(theRegion, 500, 500);
    MKPointAnnotation *point = 
    [[MKPointAnnotation alloc] init];
    point.coordinate = theRegion;
    point.title = self.theCenter.name;
    [self.theMapView setRegion:viewRegion animated:YES];
    self.theMapView.mapType = MKMapTypeSatellite;
    [self.theMapView addAnnotation:point];
}

@end
