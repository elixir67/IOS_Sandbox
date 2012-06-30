//
//  UIActivityIndicatorViewController.h
//  UIActivityIndicator
//
//  Created by tony on 10-9-1.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIActivityIndicatorViewController : UIViewController {
	UIActivityIndicatorView * myActivityView;
}

@property (nonatomic, retain) IBOutlet UIActivityIndicatorView * myActivityView;

-(IBAction)onClickButton: (id)sender;

@end

