//
//  GenViewController.h
//  RandNum
//
//  Created by Brian Oldak on 8/30/12.
//  Copyright (c) 2012 Brian Oldak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GradientButton.h"

@interface GenViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *numOfNumbers;
@property (weak, nonatomic) IBOutlet UITextField *numFrom;

@property (weak, nonatomic) IBOutlet UITextField *numTo;
- (IBAction)numOfNumbersDone:(id)sender;
- (IBAction)numFromDone:(id)sender;
- (IBAction)numToDone:(id)sender;
- (IBAction)go:(id)sender;
@property (weak, nonatomic) IBOutlet GradientButton *go;
@property (weak, nonatomic) IBOutlet UIScrollView *scroll;
- (IBAction)resign:(id)sender;

@end
