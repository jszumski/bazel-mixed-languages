#import <Foundation/Foundation.h>
#import <LibC/LibC.h>
#import <LibD/LibD.h>

@interface LibEObject : NSObject

@property(nonatomic, assign) LibBClass *example;

@property(nonatomic, strong) LibDClass *example2;

@end
