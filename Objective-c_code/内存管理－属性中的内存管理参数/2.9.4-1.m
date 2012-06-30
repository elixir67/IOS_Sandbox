#import <Foundation/Foundation.h>
#import "Song.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSArray *weeksNames2 = [[NSArray alloc] initWithObjects: 
                            @"星期一",@"星期二",@"星期三",@"星期四"
                            ,@"星期五",@"星期六",@"星期日",nil];
    
	Song *song1 = [[Song alloc] init];
   // NSArray *t = [[NSString alloc] initWithString:@"Big Big World"];
    [song1 setTitle:weeksNames2];
    
    //Song *song2 = [[Song alloc] initWithTitle:@"It's ok" andArtist:@"atomic kitten" andDuration:280];
    
    
    // insert code here...
    NSLog(@"%li",[weeksNames2 retainCount]);
    
    [pool drain];
    return 0;
}
