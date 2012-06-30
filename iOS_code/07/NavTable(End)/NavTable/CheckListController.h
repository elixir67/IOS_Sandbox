//
//  CheckListController.h
//  NavTable
//
//  Created by tony on 10-9-13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"

@interface CheckListController : SecondLevelViewController {
	NSArray *listData;
	NSIndexPath *lastIndexPath;
}

@property (nonatomic, retain) NSArray *listData;
@property (nonatomic, retain) NSIndexPath *lastIndexPath;

@end
