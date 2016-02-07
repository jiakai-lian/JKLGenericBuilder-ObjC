//
//  JKLOrder.m
//  JKLGenericBuilder-ObjC
//
//  Created by jiakai lian on 7/02/2016.
//  Copyright © 2016 Jiakai Lian. All rights reserved.
//

#import "JKLOrder.h"

#import "JKLMutableOrder.h"

@implementation JKLOrder

- (instancetype)initWithOrderId:(NSString *)orderId timeStamp:(NSDate *)timeStamp
{
    self = [super init];
    if(self)
    {
        _orderId = orderId;
        _timeStamp = timeStamp;
    }
    return self;
}

- (id)copy
{
    return self;
}

- (id)mutableCopy
{
    JKLMutableOrder * mutableCopy = [[JKLMutableOrder alloc] init];
    mutableCopy.orderId = self.orderId;
    mutableCopy.timeStamp = self.timeStamp;
    
    return mutableCopy;
}

@end
