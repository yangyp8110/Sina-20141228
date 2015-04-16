//
//  YYPStatusCell.h
//  Sina-20141228
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 yyp. All rights reserved.
//

#import <Foundation/Foundation.h>
@class YYPStatus;

@interface YYPStatusFrame : NSObject

@property(nonatomic,assign,readonly) CGRect iconF;
@property(nonatomic,assign,readonly) CGRect nameF;
@property(nonatomic,assign,readonly) CGRect vipF;
@property(nonatomic,assign,readonly) CGRect textF;
@property(nonatomic,assign,readonly) CGRect pictureF;
@property(nonatomic,assign,readonly) CGFloat cellHeight;

@property(nonatomic,strong) YYPStatus *status;

@end
