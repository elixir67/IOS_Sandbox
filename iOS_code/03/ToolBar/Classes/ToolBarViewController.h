//
//  ToolBarViewController.h
//  ToolBar
//
//  Created by tony on 10-9-2.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ToolBarViewController : UIViewController {

	IBOutlet UIActivityIndicatorView * myActivityView;
}

@property (nonatomic, retain) IBOutlet UIActivityIndicatorView * myActivityView;

-(IBAction)onClickStartButton: (id)sender;
-(IBAction)onClickOpenButton: (id)sender;

@end

