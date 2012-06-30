#import <Foundation/Foundation.h>

#import "Vector.h"
#import "Scalar.h"

int main (int argc, const char * argv[]) {
	
	Scalar *scA =[[Scalar alloc] init];
	Scalar *scB =[[Scalar alloc] init];

	Vector *vecA =[[Vector alloc] init];	
	Vector *vecB =[[Vector alloc] init];
	
	id scAandB;
	id vecAandB;

	[scA setScal: 10.5];
	[scB setScal: 13.1];
	[vecA setVec1: 3.2 andVec2: 4.7];
	[vecB setVec1: 32.2 andVec2: 47.7];

	[vecA print];
	NSLog(@" + ");
	[vecB print];
	NSLog(@" = ");
	vecAandB = [vecA add: vecB];
	[vecAandB print];
	[scA print];
	NSLog(@" + ");
	[scB print];
	NSLog(@" = ");
	scAandB = [scA add: scB];
	[scAandB print];
	
	[scA release];
	[scB release];
	[scAandB release];
	[vecA release];
	[vecB release];
	[vecAandB release];
    
	return 	0;
}
