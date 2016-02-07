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
        self = [self jkl_copyToUpdateWithBuilderBlock:block];
    }
    return self;
}

- (instancetype) jkl_copyToUpdateWithBuilderBlock:(void(^)(id mutableCopy))block
{
    id mutableCopy = [self mutableCopy];
    
    if(block)
    {
        block(mutableCopy);
    }
    return [mutableCopy copy];
}

@end
