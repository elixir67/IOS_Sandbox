#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

//	NSArray * keys = [@"one two three four five" componentsSeparatedByString:@" "];
//	NSArray * values = [@"alpha bravo charlie delta echo" componentsSeparatedByString:@" "]; 
//	NSDictionary * dict = [[NSDictionary alloc] initWithObjects:values forKeys:keys];
    
	NSDictionary * dict = [[NSDictionary alloc] initWithObjectsAndKeys:@"alpha",@"one", @"bravo",@"two", nil];
    
	NSLog(@"%@", [dict description]);
	
	[dict release];
	
    [pool drain];
    return 0;
}
