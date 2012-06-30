#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	
	enum week {
	 	Mon, Tue, Wed, Thu, Fri, Sat, Sun
	};
	
	int days,aweek;
    //aweek = 0;
	
	NSLog(@"Enter week number : ");
	
	scanf("%i", &aweek);
	
	switch (aweek) {
		case Mon:
			break;
		case Tue:
			break;
		case Wed:
			break;
		case Thu:
			break;
		case Fri:
			break;
		case Sat:
			days = 5;
			break;
		case Sun:
			days = 6;
			break;
		default:
			NSLog(@"bad week number");
			days = -1;			 
	}
	
	if (days !=0) {
		NSLog(@"Number of days is %i", days);
	}
	
    [pool drain];
    return 0;
	
}
