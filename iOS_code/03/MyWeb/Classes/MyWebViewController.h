#import <UIKit/UIKit.h>

@interface MyWebViewController : UIViewController <UIWebViewDelegate> {
	IBOutlet UITextField * myTextField;
	IBOutlet UIWebView * myWebView;
}

@property(nonatomic, retain) UIWebView * myWebView;
@property(nonatomic, retain) UITextField * myTextField;

- (IBAction) changeLocation: (id) sender;

@end

