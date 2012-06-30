#import "Rectangle.h"

@implementation Rectangle

-(Rectangle*) initWithWidth: (int) w height: (int) h {
    self = [super init];

    if ( self ) {
        //[self setWidth: w height: h];
        width = w;
        height = h;
    }

    return self;
}

-(void) setWidth: (int) w {
    width = w;
}

-(void) setHeight: (int) h {
    height = h;
}

-(void) setWidth: (int) w height: (int) h {
    width = w;
    height = h;
}

-(int) width {
    return width;
}

-(int) height {
    return  height;
}

-(void) print {
    NSLog(@"width = %i, height = %i", width, height );
}
@end
