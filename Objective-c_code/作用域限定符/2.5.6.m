#import <Foundation/Foundation.h>
#import "Access.h"

int main (int argc, const char * argv[]) {

	Access *a = [[Access alloc] init];
	
	a->publicVar = 5;
	NSLog(@"public var: %i\n", a->publicVar);
	
	
	//a->protectedVar = 6; 在新版本的Xcode 4.2之后也无法编译
    //NSLog(@"protectedVar var: %i\n", a->protectedVar);
	
	
	//不能编译
	//a->privateVar = 10;
	//NSLog(@"private var: %i\n", a->privateVar);
	
    return 0;
}
