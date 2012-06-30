//
//  NavTableMasterViewController.h
//  NavTable
//
//  Created by GUAN TONY on 12-2-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class NavTableDetailViewController;

@interface NavTableMasterViewController : UITableViewController
{
    NSArray *controllers;
}

@property (nonatomic, retain) NSArray *controllers;


@end
