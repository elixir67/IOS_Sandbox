#import <Foundation/Foundation.h>

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	long int l = 6666666666;
	NSLog(@"l = %li",l);
	int i = (int)l;
	NSLog(@"i = %i",i);
	
    // insert code here...
    NSLog(@"Hello, World! %i",l);
    [pool drain];
    return 0;
}
