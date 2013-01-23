//
//  AppDelegate.h
//  RandNum
//
//  Created by Brian Oldak on 8/30/12.
//  Copyright (c) 2012 Brian Oldak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@end

@implementation UINavigationBar(CustomImage)
-(void)willMoveToWindow:(UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
    [self applyDefaultStyle];
}

-(void)applyDefaultStyle {
    
    self.tintColor = [UIColor colorWithRed:0.4 green:0.1 blue:0.0 alpha:1.0 ];
    [self setBackgroundImage:[UIImage imageNamed:@"nav.png"] forBarMetrics:UIBarMetricsDefault];
    
    self.layer.shadowColor = [[UIColor blackColor] CGColor];
    self.layer.shadowOffset = CGSizeMake(0, 3);
    self.layer.shadowOpacity = 0.7;
    self.layer.masksToBounds = NO;
    CGRect shadowPath = CGRectMake(self.layer.bounds.origin.x - 10, self.layer.bounds.size.height - 6, self.layer.bounds.size.width + 20, 5);
    self.layer.shadowPath = [UIBezierPath bezierPathWithRect:shadowPath].CGPath;
    self.layer.shouldRasterize = YES;
    self.titleTextAttributes = [NSDictionary dictionaryWithObject:[UIFont fontWithName:@"Trebuchet MS" size:22.0] forKey:UITextAttributeFont];
}
@end