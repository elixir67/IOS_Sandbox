//
//  Student.h
//  Encoding
//
//  Created by tony on 10-9-18.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject<NSCopying, NSCoding> {
	NSString *studentId;
	NSString *studentName;
	NSString *studentClass;
}

@property (nonatomic, retain) NSString *studentId;
@property (nonatomic, retain) NSString *studentName;
@property (nonatomic, retain) NSString *studentClass;

@end
