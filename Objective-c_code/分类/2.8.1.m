
#import <Foundation/Foundation.h>
#import "Vector.h"


int main (int argc, const char * argv[]) {

	Vector *vecA =[[Vector alloc] init];	
	Vector *vecB =[[Vector alloc] init];
	id result;
	
	//set the values
	[vecA setVec1: 3.2 andVec2: 4.7];
	[vecB setVec1: 32.2 andVec2: 47.7];
	
	// print it
	[vecA print];
	NSLog(@" + ");
	[vecB print];
	NSLog(@" = ");
	result = [vecA add: vecB];
	[result print];
	
	[vecA print];
	NSLog(@" - ");
	[vecB print];
	NSLog(@" = ");
	result = [vecA sub: vecB];
	[result print];
	
	// free memory
	[vecA release];
	[vecB release];
	[result release];
    return 0;
}
