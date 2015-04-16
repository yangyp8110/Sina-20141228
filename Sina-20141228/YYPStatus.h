//
//  YYPStatus.h
//  Sina-20141228
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 yyp. All rights reserved.
//  豆荚VPN才能下载git

#import <Foundation/Foundation.h>

@interface YYPStatus : NSObject

/**
 *  正文
 */
@property (nonatomic,copy) NSString *text;
/**
 *  头像
 */
@property (nonatomic,copy) NSString *icon;
/**
 *  昵称
 */
@property (nonatomic,copy) NSString *name;
/**
 *  配图
 */
@property (nonatomic,copy) NSString *picture;
/**
 *  会员图标
 */
@property (nonatomic,assign) int vip;

+ (instancetype)statusWithDict:(NSDictionary *)dict;
- (instancetype)initWithDict:(NSDictionary *)dict;

@end
