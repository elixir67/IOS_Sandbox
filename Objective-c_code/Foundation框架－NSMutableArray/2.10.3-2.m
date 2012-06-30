#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
   
	NSMutableArray *weeksNames = [[NSMutableArray alloc] initWithCapacity: 3];
    [weeksNames addObject: @"星期一"];   
	[weeksNames addObject: @"星期二"];
    [weeksNames addObject: @"星期三"];   
	[weeksNames addObject: @"星期四"];
    [weeksNames addObject: @"星期五"];    
	[weeksNames addObject: @"星期六"];
    [weeksNames addObject: @"星期日"];  
	
	NSLog(@"星期名字");
    NSLog(@"====   ====");
	
    int i;
    for (i=0; i < [weeksNames count];i++) 
    	NSLog(@"%2i     %@ ", i+1, [weeksNames objectAtIndex: i]); 
	
	[weeksNames release];

    return 0;
	
}
