#import <Foundation/Foundation.h>
#import "LibA/LibA.h"

@interface LibBClass : NSObject

- (void)doSomethingThatUsesLibA:(LibAClass*)instance;

@end
