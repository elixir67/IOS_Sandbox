//
//  SimpleTableViewController.h
//  SectionTable
//
//  Created by GUAN TONY on 12-2-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate> {
    NSDictionary *teams;
    NSArray *teamsname;
}
@property (nonatomic,retain) NSDictionary *teams;
@property (nonatomic,retain) NSArray *teamsname;

@end
