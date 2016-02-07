//
//  JKLOrder.h
//  JKLGenericBuilder-ObjC
//
//  Created by jiakai lian on 7/02/2016.
//  Copyright © 2016 Jiakai Lian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JKLOrder : NSObject

@property(nonatomic, copy, readonly) NSString * orderId;
@property(nonatomic, copy, readonly) NSDate * timeStamp;

- (instancetype)initWithOrderId:(NSString *)orderId timeStamp:(NSDate *)timeStamp;

@end
