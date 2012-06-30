#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

    NSArray *weeksNames = [NSArray arrayWithObjects: 
						   @"星期一",@"星期二",@"星期三",@"星期四"
						   ,@"星期五",@"星期六",@"星期日",nil];
    NSLog(@"星期名字");
    NSLog(@"====   ====");
    int i;
    for (i=0; i < [weeksNames count];i++) {
    	NSLog(@"%2i     %@ ", i+1, [weeksNames objectAtIndex: i]);    	
    }
	
	
    [pool drain];
    return 0;
}
