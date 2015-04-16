//
//  YYPStatus.m
//  Sina-20141228
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 yyp. All rights reserved.
//

#import "YYPStatus.h"


@implementation YYPStatus
+ (instancetype)statusWithDict:(NSDictionary *)dict
{
    return [[YYPStatus alloc] initWithDict:dict];
}
- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}
@end
