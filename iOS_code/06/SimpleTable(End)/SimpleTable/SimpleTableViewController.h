//
//  SimpleTableViewController.h
//  SimpleTable
//
//  Created by GUAN TONY on 12-2-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate> {
    NSArray *listData;
    NSArray *listImage;
}
@property (nonatomic, retain) NSArray *listData;
@property (nonatomic, retain) NSArray *listImage;

@end

