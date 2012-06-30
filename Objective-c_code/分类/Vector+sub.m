//
//  Vector+sub.m
//  2.8.1
//
//  Created by tony on 11-9-7.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Vector+sub.h"


@implementation  Vector (sub) 

-(Vector *) sub: (Vector *) v {
	Vector *result = [[Vector alloc] init];
	[result setVec1: vec1 - [v vec1] andVec2: vec2 - [v vec2]]; 
	return result;
}

@end
