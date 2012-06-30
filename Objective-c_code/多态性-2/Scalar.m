//
//  Scalar.m
//  Polymorphism
//
//  Created by tony on 11-3-31.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Scalar.h"


@implementation Scalar

@synthesize scal;

-(void)print {
	NSLog(@"%g", scal);
}

-(void)setScal:(double)sval {
	scal = sval;
}

-(Scalar *)add:(Scalar *)s {
	Scalar *result  = [[Scalar alloc] init];
	[result setScal:scal + [s scal]];
	return result;
}

@end
