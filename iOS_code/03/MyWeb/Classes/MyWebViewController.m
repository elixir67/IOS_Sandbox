#import "MyWebViewController.h"

@implementation MyWebViewController

@synthesize myWebView;
@synthesize myTextField;

- (void) viewDidLoad {
	myWebView.delegate = self;
}

- (void)dealloc {
	myWebView.delegate = nil;
	[myTextField release];
	[myWebView release];
	[super dealloc];
}

- (IBAction) changeLocation: (id) sender {
	[myTextField resignFirstResponder];
	NSURL * url = [NSURL URLWithString: @"http://202.127.42.139/nkweb/jason/images//2002//2.jpg"];
	NSURLRequest * request = [NSURLRequest requestWithURL:url];
	[myWebView loadRequest:request];
}

#pragma mark WebView 委托
#pragma mark --
- (void)webViewDidFinishLoad: (UIWebView *) webView {
	NSLog(@"%@", [webView stringByEvaluatingJavaScriptFromString:
				  @"document.body.innerHTML"]);
}

@end
