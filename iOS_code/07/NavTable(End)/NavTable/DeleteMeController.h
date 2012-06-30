//
//  DeleteMeController.h
//  NavTable
//
//  Created by tony on 10-9-13.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondLevelViewController.h"

@interface DeleteMeController : SecondLevelViewController {
	NSMutableArray *listData;
}

@property (nonatomic, retain) NSMutableArray *listData;
-(IBAction)toggleMove;

@end
