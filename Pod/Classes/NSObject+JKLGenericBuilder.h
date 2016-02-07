//
//  NSObject+JKLGenericBuilder.h
//  Pods
//
//  Created by jiakai lian on 7/02/2016.
//
//

#import <Foundation/Foundation.h>

@interface NSObject (JKLGenericBuilder)

- (instancetype) initWithBuilderBlock:(void(^)(id mutableCopy))block;
- (instancetype) jkl_copyToUpdateWithBuilderBlock:(void(^)(id mutableCopy))block;

@end
