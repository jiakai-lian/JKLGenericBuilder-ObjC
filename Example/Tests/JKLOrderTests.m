//
//  JKLOrderTests.m
//  JKLGenericBuilder-ObjC
//
//  Created by jiakai lian on 7/02/2016.
//  Copyright © 2016 Jiakai Lian. All rights reserved.
//

#import "JKLOrder.h"
#import "JKLMutableOrder.h"
#import "NSObject+JKLGenericBuilder.h"

SpecBegin(JKLOrderSpecs)

describe(@"these will pass", ^{
    
    __block NSString * orderId = @"1";
    __block NSDate * timeStamp = [NSDate date];
    __block JKLOrder * order;
    
    beforeEach(^{
        order = nil;
    });
    
    it(@"can do init", ^{
        order = [[JKLOrder alloc] initWithOrderId:orderId timeStamp:timeStamp];
        
        expect(order).toNot.beNil();
        expect(order.orderId).to.equal(orderId);
        expect(order.timeStamp).to.equal(timeStamp);
    });
    
    it(@"can do init with JKLGenericBuilder", ^{
        order = [[JKLOrder alloc] initWithBuilderBlock:^(JKLMutableOrder * mutableCopy){
            mutableCopy.orderId = orderId;
            mutableCopy.timeStamp= timeStamp;
        }];
        
        expect(order).toNot.beNil();
        expect(order.orderId).to.equal(orderId);
        expect(order.timeStamp).to.equal(timeStamp);
    });
    
    it(@"can change values through JKLGenericBuilder", ^{
        order = [[JKLOrder alloc] initWithBuilderBlock:^(JKLMutableOrder * mutableCopy){
            mutableCopy.orderId = orderId;
            mutableCopy.timeStamp= timeStamp;
        }];
        
        sleep(1);
        
        NSDate * newTimeStamp = [NSDate date];
        
        JKLOrder * newOrder = [order jkl_copyToUpdateWithBuilderBlock:^(JKLMutableOrder * mutableCopy){
            mutableCopy.timeStamp = newTimeStamp;
        }];
        
        expect(newOrder).toNot.beNil();
        expect(newOrder.orderId).to.equal(orderId);
        expect(newOrder.timeStamp).to.equal(newTimeStamp);
    });
});

SpecEnd
