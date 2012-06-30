//
//  WhereAmIFlipsideViewController.h
//  WhereAmI
//
//  Created by GUAN TONY on 12-3-2.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WhereAmIFlipsideViewController;

@protocol WhereAmIFlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(WhereAmIFlipsideViewController *)controller;
@end

@interface WhereAmIFlipsideViewController : UIViewController

@property (assign, nonatomic) IBOutlet id <WhereAmIFlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
