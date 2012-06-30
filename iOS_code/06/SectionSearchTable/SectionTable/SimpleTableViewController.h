//
//  SimpleTableViewController.h
//  SectionTable
//
//  Created by GUAN TONY on 12-2-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate,UISearchBarDelegate> {
    NSMutableDictionary *allteams;
    NSMutableDictionary  *teams;
    NSArray *teamsname;
}
@property (nonatomic,retain) NSMutableDictionary *allteams;
@property (nonatomic,retain) NSMutableDictionary *teams;
@property (nonatomic,retain) NSArray *teamsname;

-(void)resetSearch;


@end
