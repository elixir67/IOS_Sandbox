#import <Foundation/Foundation.h>
#import "Graphics.h"
#import "Ellipse.h"
#import "Triangle.h"

int main (int argc, const char * argv[]) {
	
	Graphics* graphics;
	graphics = [[Ellipse alloc] init];
	[graphics onDraw];
	[graphics release];
	
	graphics = [[Triangle alloc] init];
	[graphics onDraw];
	[graphics release];
	
    return 0;
}
