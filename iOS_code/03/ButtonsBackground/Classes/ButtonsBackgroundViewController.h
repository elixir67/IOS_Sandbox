#import <UIKit/UIKit.h>

@interface ButtonsBackgroundViewController : UIViewController {

	UIButton * clearButton;
	UIButton * smallButton;
}

@property (nonatomic, retain) IBOutlet UIButton * clearButton;
@property (nonatomic, retain) IBOutlet UIButton * smallButton;

- (IBAction) disableBut: (id) sender;

@end

