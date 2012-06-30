#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	NSMutableDictionary *mutable = [[NSMutableDictionary alloc] init];
    
    // add objects
    [mutable setObject: @"Tom" forKey: @"tom@jones.com"];
    [mutable setObject: @"Bob" forKey: @"bob@dole.com" ];
	
	NSLog(@"%@", [mutable description]);
	
	[mutable release];
	
    [pool drain];
    return 0;
}
