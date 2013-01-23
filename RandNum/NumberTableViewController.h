//
//  NumberTableViewController.h
//  RandNum
//
//  Created by Brian Oldak on 8/31/12.
//  Copyright (c) 2012 Brian Oldak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberTableViewController : UITableViewController

@property (strong)NSString *num;
@property (strong)NSString *from;
@property (strong)NSString *to;
@property (strong)NSString *randNumber;
@property (strong)NSMutableArray *numbers;

@end
