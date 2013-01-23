//
//  NumberTableViewController.m
//  RandNum
//
//  Created by Brian Oldak on 8/31/12.
//  Copyright (c) 2012 Brian Oldak. All rights reserved.
//

#import "NumberTableViewController.h"

@interface NumberTableViewController ()

@end

@implementation NumberTableViewController
@synthesize num;
@synthesize from;
@synthesize to;
@synthesize randNumber;
@synthesize numbers = _numbers;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)refresh{
    int x = 0;
    self.numbers = [[NSMutableArray alloc]init];
    while (x<[num intValue]){
        int randNum = rand() % ([to intValue]+1 - [from intValue]) + [from intValue];
        [self.numbers addObject:[NSString stringWithFormat: @"%d",randNum]];
        NSLog(@"%i",[self.numbers count]);
        x++;
        NSLog(@"%@", [NSString stringWithFormat: @"%d",randNum]);
        NSLog(@"%i, %i", [num intValue], x);
        [self.tableView reloadData];
    }
}

- (void)viewDidLoad
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refresh)];
    
    self.navigationItem.rightBarButtonItem.style = UIBarButtonItemStylePlain;
    
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"retina_wood.png"]];
        

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    int x = 0;
    self.numbers = [[NSMutableArray alloc]init];
        while (x<[num intValue]){
            int randNum = rand() % ([to intValue]+1 - [from intValue]) + [from intValue];
            [self.numbers addObject:[NSString stringWithFormat: @"%d",randNum]];
            NSLog(@"%i",[self.numbers count]);
            x++;
            NSLog(@"%@", [NSString stringWithFormat: @"%d",randNum]);
            NSLog(@"%i, %i", [num intValue], x);
        }
        [super viewDidLoad];
}
- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    NSLog(@"%i",[self.numbers count]);
    return [self.numbers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"HI");
    static NSString *CellIdentifier = @"NUMBER";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    NSLog(@"%i, %@",indexPath.row, [self.numbers objectAtIndex:indexPath.row]);
    cell.textLabel.text = [self.numbers objectAtIndex:indexPath.row];
    
    // Configure the cell...
    
    return cell;
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
