//
//  NumbersViewController.m
//  RandNum
//
//  Created by Brian Oldak on 8/31/12.
//  Copyright (c) 2012 Brian Oldak. All rights reserved.
//

#import "NumbersViewController.h"

@interface NumbersViewController ()

@end

@implementation NumbersViewController
@synthesize num;
@synthesize from;
@synthesize to;

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
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"retina_wood.png"]];
    if ([num isEqualToString:@"1"]){
        int randNum = rand() % ([to intValue]- [from intValue]) + [from intValue];
        NSLog(@"%i", randNum);
        CGRect labelFrame = CGRectMake( 10, 40, 100, 30 );
        UILabel* label = [[UILabel alloc] initWithFrame: labelFrame];
        [label setText: [NSString stringWithFormat: @"%d",randNum]];
        [self.view addSubview: label];
        
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
