#import <Foundation/Foundation.h>
#import "Square.h"
#import "Rectangle.h"

int main (int argc, const char * argv[]) {

	Rectangle *rec = [[Rectangle alloc] initWithWidth: 10 height: 20];
    Square *sq = [[Square alloc] initWithSize: 15];

    NSLog(@"Rectangle: " );
    [rec print];
	
	NSLog(@"Square: " );
    [sq print];
	
    [sq setWidth: 20];
    NSLog(@"Square after change: " );
    [sq print];

    [rec release];
    [sq release];
		
    return 0;
}
