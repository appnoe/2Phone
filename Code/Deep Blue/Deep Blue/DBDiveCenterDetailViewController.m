//
//  DBDiveCenterDetailViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 03.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import "DBDiveCenterDetailViewController.h"



@interface DBDiveCenterDetailViewController ()

@end

@implementation DBDiveCenterDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [super viewWillAppear:animated];
    CLLocationCoordinate2D theRegion;
    theRegion.latitude = [self.theCenter.latitude doubleValue];
    theRegion.longitude= [self.theCenter.longitude doubleValue];
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(theRegion, 500, 500);
    MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
    point.coordinate = theRegion;
    point.title = self.theCenter.name;
    [self.theMapView setRegion:viewRegion animated:YES];
    [self.theMapView addAnnotation:point];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.theMapView.delegate = self;
    self.divecenterName.text = self.theCenter.name;
    self.position.text = [NSString stringWithFormat:@"%@:%@", self.theCenter.latitude, self.theCenter.longitude];
    self.divecenterImage.image = self.theCenter.image;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
