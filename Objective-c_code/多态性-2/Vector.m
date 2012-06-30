//
//  Vector.m
//  Polymorphism
//
//  Created by tony on 11-3-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Vector.h"


@implementation Vector
@synthesize vec1,vec2;
-(void) setVec1:(double) v1 andVec2:(double)v2 {
	vec1 = v1;
	vec2 = v2;
}
-(Vector *)add:(Vector *)v {
	Vector *result = [[Vector alloc] init];
	[result setVec1:vec1 + [v vec1] andVec2: vec2 + [v vec2]];
	return result;
}

-(void)print {
	NSLog(@"%g,  %g",vec1,vec2);
}

@end
