//
//  NSObject+JKLGenericBuilder.m
//  Pods
//
//  Created by jiakai lian on 7/02/2016.
//
//

#import "NSObject+JKLGenericBuilder.h"

@implementation NSObject (JKLGenericBuilder)

- (instancetype) initWithBuilderBlock:(void(^)(id mutableCopy))block
{
    self = [self init];
    if(self && block)
    {
        id mutableCopy = [self mutableCopy];
        block(mutableCopy);
        self = [mutableCopy copy];
    }
    return self;
}

@end
