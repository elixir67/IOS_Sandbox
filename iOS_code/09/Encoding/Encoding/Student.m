//
//  Students.m
//  Encoding
//
//  Created by tony on 10-9-18.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Student.h"

@implementation Student

@synthesize studentId;
@synthesize studentName;
@synthesize studentClass;

-(void)encodeWithCoder:(NSCoder *)aCoder {
	[aCoder encodeObject:studentId forKey:@"studentId"];
	[aCoder encodeObject:studentName forKey:@"studentName"];
	[aCoder encodeObject:studentClass forKey:@"studentClass"];
}

-(id)initWithCoder:(NSCoder *)aDecoder {
	self.studentId = [aDecoder decodeObjectForKey:@"studentId"];
	self.studentName = [aDecoder decodeObjectForKey:@"studentName"];
	self.studentClass = [aDecoder decodeObjectForKey:@"studentClass"];
	return self;
}

-(id)copyWithZone:(NSZone *)zone {
	Student *copy = [[[self class] allocWithZone:zone] init];
	copy.studentId = [self.studentId copyWithZone:zone];
	copy.studentName = [self.studentName copyWithZone:zone];
	copy.studentClass = [self.studentClass copyWithZone:zone];
	return copy;
}

@end
