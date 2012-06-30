//
//  UtlityAppFlipsideViewController.h
//  UtlityApp
//
//  Created by GUAN TONY on 12-3-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UtlityAppFlipsideViewController;

@protocol UtlityAppFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(UtlityAppFlipsideViewController *)controller;
@end

@interface UtlityAppFlipsideViewController : UIViewController

@property (assign, nonatomic) IBOutlet id <UtlityAppFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
