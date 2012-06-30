//
//  Song.m
//  2.5.2_1
//
//  Created by tony on 11-9-6.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Song.h"

@implementation Song

//构造函数
-(Song*) initWithTitle: (NSArray *) newTitle andArtist: (NSString *) newArtist 
		   andDuration:(long int)newDuration {
	self = [super init];
	if ( self ) {
		[self setTitle:newTitle];		
		[self setArtist:newArtist];
		[self setDuration:newDuration];
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


//访问成员变量方法
- (NSArray *)title {
	return title;	
}
- (void)setTitle:(NSArray *)newTitle {
     
    [newTitle copy];
    //NSLog(@"%li",[newTitle retainCount]);
	//[newTitle retain];
    NSLog(@"%li",[newTitle retainCount]);
	[title release];
	title =[[NSArray alloc] initWithArray:newTitle];	
    NSLog(@"%li",[title retainCount]);
    [newTitle release];
    NSLog(@"%li",[newTitle retainCount]);
    
}
- (NSString *)artist {
	return artist;
}
- (void)setArtist:(NSString *)newArtist {
	[newArtist retain];
	[artist release];
	artist = [[NSString alloc] initWithString: newArtist];	
}
- (long int)duration {
	return duration;
}
- (void)setDuration:(long int)newDuration {
	duration = newDuration;
}

@end
