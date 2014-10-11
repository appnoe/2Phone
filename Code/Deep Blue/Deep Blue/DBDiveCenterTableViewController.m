//
//  DBDiveCenterTableViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 09.10.14.
//  Copyright (c) 2014 Deep Blue S.L. All rights reserved.
//

#import "DBDiveCenterTableViewController.h"
#import "DBDiveCenter.h"
#import "DBDiveCenterDetailViewController.h"

@interface DBDiveCenterTableViewController ()
@property (copy) NSArray *diveCenters;
@end

@implementation DBDiveCenterTableViewController

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    DBDiveCenter *caleta = [[DBDiveCenter alloc]
                            initWithData:@"Caleta de Fuste"
                            icon:[UIImage imageNamed:@"CaletaIcon.tif"]
                            image:[UIImage imageNamed:@"Caleta.tif"]
                            latitude:[NSNumber numberWithDouble:28.392958]
                            longitude:[NSNumber numberWithDouble:-13.855450]];
    DBDiveCenter *playitas = [[DBDiveCenter alloc]
                              initWithData:@"Las Playitas"
                              icon:[UIImage imageNamed:@"PlayitasIcon.tif"]
                              image:[UIImage imageNamed:@"Playitas.tif"]
                              latitude:[NSNumber numberWithDouble:28.227517]
                              longitude:[NSNumber numberWithDouble:-13.990925]];
    self.diveCenters = [NSArray arrayWithObjects:caleta, playitas, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.diveCenters count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    DBDiveCenter *theCenter = [self.diveCenters objectAtIndex:indexPath.row];
    cell.textLabel.text = theCenter.name;
    cell.imageView.image = theCenter.icon;
    // Configure the cell...
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)inSegue 
sender:(id)inSender
{
    if([inSegue.identifier isEqualToString: 
        @"DetailView"]) {
        DBDiveCenterDetailViewController 
        *detailViewController = inSegue.destinationViewController;
        
        NSIndexPath *selectedRowIndexPath = 
        [self.tableView indexPathForSelectedRow];
        detailViewController.theCenter = 
        [self.diveCenters 
         objectAtIndex:selectedRowIndexPath.row];
    }
}

@end
