#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
	
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	
	NSArray *weeksNames1 = [NSArray arrayWithObjects: 
						   @"星期一",@"星期二",@"星期三",@"星期四"
						   ,@"星期五",@"星期六",@"星期日",nil];
	
	NSArray *weeksNames2 = [[NSArray alloc] initWithObjects: 
						   @"星期一",@"星期二",@"星期三",@"星期四"
						   ,@"星期五",@"星期六",@"星期日",nil];
	
	//[weeksNames1 release];
	//[weeksNames1 autorelease];
	//[weeksNames2 release];
	[weeksNames2 autorelease];
	
    NSLog(@" retain count: %li" , [weeksNames1 retainCount] );
	NSLog(@" retain count: %li" , [weeksNames2 retainCount] );
    
   [pool release];

 	return 0;	
}
