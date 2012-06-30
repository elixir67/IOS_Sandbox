//
//  DisclosureDetailController.h
//  NavTable
//
//  Created by tony on 10-9-12.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface DisclosureDetailController : UIViewController {
	UILabel *label;
	NSString *message;
}
@property (nonatomic, retain) IBOutlet UILabel *label;
@property (nonatomic, retain) NSString *message;

@end
