#import <Foundation/Foundation.h>
#import "ClassA.h"

int main( int argc, const char *argv[] ) {
	ClassA *c1 = [[ClassA alloc] init];
	ClassA *c2 = [[ClassA alloc] init];
	
	// print count
	NSLog(@"ClassA count: %i", [ClassA initCount] );
	
	ClassA *c3 = [[ClassA alloc] init];
	NSLog(@"ClassA count: %i", [ClassA initCount] );
	
	[c1 release];
	[c2 release];
	[c3 release];
	
	return 0;
}

