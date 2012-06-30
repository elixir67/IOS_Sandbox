//
//  Graphics.h
//  2.7.1
//
//  Created by tony on 11-9-7.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//


@protocol Graphics

-(void) onDraw;

@end

@protocol MyProtocol
- (void)requiredMethod;
@optional 
- (void)anOptionalMethod; 
- (void)anotherOptionalMethod;
@required
- (void)anotherRequiredMethod;
@end

