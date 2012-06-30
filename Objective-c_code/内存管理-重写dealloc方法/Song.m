//
//  Song.m
//  2.5.2_1
//
//  Created by tony on 11-9-6.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Song.h"

@implementation Song

@synthesize title;
@synthesize artist;
@synthesize duration;

//构造函数
-(Song*) initWithTitle: (NSString *) newTitle andArtist: (NSString *) newArtist andDuration:(long int)newDuration {
	self = [super init];
	if ( self ) {
		self.title = newTitle;
		self.artist = newArtist;
		self.duration = newDuration;
	}
	return self;
	
}

- (void)start {
	//开始播放
}

- (void)stop {
	//停止播放
}

- (void)seek:(long int)time {
	//跳过时间
}

-(void) dealloc {
	NSLog(@"释放Song对象...");
	[title release];
	[artist release];
	[super dealloc];
}

@end
