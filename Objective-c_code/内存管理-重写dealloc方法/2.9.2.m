#import <Foundation/Foundation.h>
#import "Song.h"

int main (int argc, const char * argv[]) {

	Song *song1 = [[Song alloc] initWithTitle:@"Big Big World" andArtist:@"奥斯卡.艾美莉亚" andDuration:180];
    Song *song2 = [[Song alloc] initWithTitle:@"It's ok" andArtist:@"atomic kitten" andDuration:280];
	
	// print current counts
    NSLog(@"song 1 retain count: %li", [song1 retainCount] );
    NSLog(@"song 2 retain count: %li", [song2 retainCount] );
    
	// increment them
    [song1 retain]; // 2
    [song1 retain]; // 3
    [song2 retain]; // 2
    
	// print current counts
    NSLog(@"song 1 retain count: %li", [song1 retainCount] );
    NSLog(@"song 2 retain count: %li", [song2 retainCount] );
    
	// decrement
    [song1 release]; // 2
    [song2 release]; // 1
	
    // print current counts
    NSLog(@"song 1 retain count: %li", [song1 retainCount] );
    NSLog(@"song 2 retain count: %li", [song2 retainCount] );
    
    // release them until they dealloc themselves
    [song1 release]; // 1
    [song1 release]; // 0
    [song2 release]; // 0
	
    return 0;
}
