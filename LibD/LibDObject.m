#import "LibDObject.h"
#import "LibC/LibC-Swift.h"

@implementation LibDObject

- (void)someMethod {
	LibCClass *obj = [[LibCClass alloc] init];

	NSLog(@"%@", obj);
}

@end
