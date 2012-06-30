#import "Square.h"

@implementation Square

-(Square*) initWithSize: (int) s {
    self = [super init];

    if ( self ) {
       // [self setSize: s];
        width = s;
        height = s;
    }

    return self;
}

-(void) setSize: (int) s {
    width = s;
    height = s;
}

-(int) size {
    return width;
}

-(void) setWidth: (int) w {
    [self setSize: w];
}

-(void) setHeight: (int) h {
    [self setSize: h];
}
@end
