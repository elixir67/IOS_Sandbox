//
//  ClassA.m
//  ClassLevelAccessTest
//
//  Created by tony on 10-8-5.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ClassA.h"

@implementation ClassA

-(id) init {
	self = [super init];
	count++;
	return self;
}

+(int) initCount {
	return count;
}

+(void) initialize {
	count = 0;
}
@end

