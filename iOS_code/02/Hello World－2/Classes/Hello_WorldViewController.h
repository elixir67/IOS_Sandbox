//
//  Hello_WorldViewController.h
//  Hello World
//
//  Created by tony on 10-8-28.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Hello_WorldViewController : UIViewController {
	UITextField *txtField;
}

@property (nonatomic, retain) IBOutlet UITextField *txtField;

-(IBAction)onClickButton:(id)sender;

@end



