//
//  JKLMutableOrder.m
//  JKLGenericBuilder-ObjC
//
//  Created by jiakai lian on 7/02/2016.
//  Copyright © 2016 Jiakai Lian. All rights reserved.
//

#import "JKLMutableOrder.h"

#import "JKLOrder.h"

@implementation JKLMutableOrder

- (id)copy
{
    JKLOrder * order = [[JKLOrder alloc]initWithOrderId:self.orderId timeStamp:self.timeStamp];
    
    return order;
}

- (id)mutableCopy
{
    JKLMutableOrder * mutableCopy = [[JKLMutableOrder alloc] init];
    mutableCopy.orderId = self.orderId;
    mutableCopy.timeStamp = self.timeStamp;
    
    return mutableCopy;
}

@end
