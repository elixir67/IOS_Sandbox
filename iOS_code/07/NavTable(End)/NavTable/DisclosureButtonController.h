//
//  DisclosureButtonController.h
//  NavTable
//
//  Created by tony on 10-9-12.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SecondLevelViewController.h"
#import "DisclosureDetailController.h"

@interface DisclosureButtonController : SecondLevelViewController {
	NSArray *listData;
	DisclosureDetailController *childController;
}
@property (nonatomic,retain) NSArray *listData;
@property (nonatomic, retain) DisclosureDetailController *childController;

@end
