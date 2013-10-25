//
//  DBDiveCenterTableViewController.m
//  Deep Blue
//
//  Created by Klaus Rodewig on 01.02.13.
//  Copyright (c) 2013 Deep Blue Diving S.L. All rights reserved.
//

#import "DBDiveCenterTableViewController.h"
#import "DBDiveCenter.h"
#import "DBDiveCenterDetailViewController.h"

@interface DBDiveCenterTableViewController ()

@end

@implementation DBDiveCenterTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    NSLog(@"%s",__PRETTY_FUNCTION__);
    [super viewDidLoad];
    DBDiveCenter *caleta = [[DBDiveCenter alloc] initWithData:@"Caleta de Fuste" icon:[UIImage imageNamed:@"CaletaIcon.tif"] image:[UIImage imageNamed:@"Caleta.tif"] latitude:[NSNumber numberWithDouble:28.392958] longitude:[NSNumber numberWithFloat:-13.855450]];
    DBDiveCenter *playitas = [[DBDiveCenter alloc] initWithData:@"Las Playitas" icon:[UIImage imageNamed:@"PlayitasIcon.tif"] image:[UIImage imageNamed:@"Playitas.tif"] latitude:[NSNumber numberWithDouble:28.227517] longitude:[NSNumber numberWithFloat:-13.990925]];
    DBDiveCenter *marymas = [[DBDiveCenter alloc] initWithData:@"Mar Y Mas" icon:[UIImage imageNamed:@"MarYMasIcon.tif"] image:[UIImage imageNamed:@"MarYMas.tif"] latitude:[NSNumber numberWithDouble:28.734583] longitude:[NSNumber numberWithFloat:-13.869023]];
    self.diveCenters = [NSArray arrayWithObjects:caleta, playitas, marymas, nil];
    NSLog(@"divecenters: %d", [self.diveCenters count]);
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.diveCenters count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    DBDiveCenter *theCenter = [self.diveCenters objectAtIndex:indexPath.row];
    cell.textLabel.text = theCenter.name;
    cell.imageView.image = theCenter.icon;
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)inSegue sender:(id)inSender
{
    if([inSegue.identifier isEqualToString:@"Detailview"]) {
        DBDiveCenterDetailViewController *detailViewController = inSegue.destinationViewController;

        NSIndexPath *selectedRowIndexPath = [self.tableView indexPathForSelectedRow];
        NSLog(@"index: %ld", (long)selectedRowIndexPath.row);
        detailViewController.theCenter = [self.diveCenters objectAtIndex:selectedRowIndexPath.row];
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

@end
