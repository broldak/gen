//
//  GenViewController.m
//  RandNum
//
//  Created by Brian Oldak on 8/30/12.
//  Copyright (c) 2012 Brian Oldak. All rights reserved.
//

#import "GenViewController.h"
#import "NumberTableViewController.h"

@interface GenViewController ()

@end

@implementation GenViewController
@synthesize go;
@synthesize scroll;
@synthesize numTo;
@synthesize numOfNumbers;
@synthesize numFrom;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [go useWhiteStyle];
    [self.navigationItem setHidesBackButton:NO];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"retina_wood.png"]];
    [numOfNumbers becomeFirstResponder];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    self.navigationItem.backBarButtonItem.title = @"Back";
    [self setNumOfNumbers:nil];
    [self setNumTo:nil];
    [self setNumFrom:nil];
    [self setGo:nil];
    [self setScroll:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(void)viewDidAppear:(BOOL)animated{
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:nil action:nil];
    self.navigationItem.backBarButtonItem = backButton;
}

- (IBAction)numOfNumbersDone:(id)sender {
    [numFrom becomeFirstResponder];
}

- (IBAction)numFromDone:(id)sender {
    [numTo becomeFirstResponder];
    
}

- (IBAction)numToDone:(id)sender {
    [self go:sender];
}

- (IBAction)go:(id)sender {
    NSString *num = numOfNumbers.text;
    NSString *from = numFrom.text;
    NSString *to = numTo.text;
    
    if ([to intValue]>[from intValue]){
    
    
    NumberTableViewController *a = [self.storyboard instantiateViewControllerWithIdentifier:@"B"];
    a.num = num;
    a.from = from;
    a.to = to;
    [self.navigationController pushViewController:a animated:YES];
    }
    else{
        UIAlertView *alert =
        [[UIAlertView alloc] initWithTitle: @"Error"
                                   message: @"Those bounds don't work!"
                                  delegate: self
                         cancelButtonTitle: @"Okay, I'll fix them."
                         otherButtonTitles: nil];
        [alert show];
    }
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}
- (IBAction)resign:(id)sender {
    [self.view endEditing:YES];
}
@end
