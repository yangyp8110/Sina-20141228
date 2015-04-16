//
//  YYPStatusCell.m
//  Sina-20141228
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 yyp. All rights reserved.
//

#import "YYPStatusFrame.h"
#import "YYPStatus.h"
#define YYPNameFont [UIFont systemFontOfSize:14]
#define YYPTextFont [UIFont systemFontOfSize:16]

@implementation YYPStatusFrame

/**
 *  计算一段文字的宽高
 */
- (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize
{
    NSDictionary *attr = @{NSFontAttributeName:font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attr context:nil].size;
}

- (void)setStatus:(YYPStatus *)status
{
    _status = status;
    
    CGFloat padding = 10;
    
    CGFloat iconX = padding;
    CGFloat iconY = padding;
    CGFloat iconW = 30;
    CGFloat iconH = 30;
    _iconF = CGRectMake(iconX, iconY, iconW, iconH);
    
    CGSize nameSize = [self sizeWithText:self.status.name font:YYPNameFont maxSize:CGSizeMake(MAXFLOAT, MAXFLOAT)];
    CGFloat nameX = CGRectGetMaxX(_iconF) + padding;
    CGFloat nameY = iconY + (iconH - nameSize.height) * 0.5;
    _nameF = CGRectMake(nameX, nameY, nameSize.width, nameSize.height);
    
    CGFloat vipX = CGRectGetMaxX(_nameF) + padding;
    CGFloat vipY = nameY;
    CGSize vipSize = CGSizeMake(14, 14);
    _vipF = CGRectMake(vipX, vipY, vipSize.width, vipSize.height);
    
    CGSize textSize = [self sizeWithText:self.status.text font:YYPTextFont maxSize:CGSizeMake(320, MAXFLOAT)];
    CGFloat textX = iconX;
    CGFloat textY = CGRectGetMaxY(_iconF) + padding;
    _textF = CGRectMake(textX, textY, textSize.width, textSize.height);
    
    if (_status.picture) {
        CGFloat pictureX = iconX;
        CGFloat pictureY = CGRectGetMaxY(_textF) + padding;
        CGSize pictureSize = CGSizeMake(100, 100);
        _pictureF = CGRectMake(pictureX, pictureY, pictureSize.width, pictureSize.height);
        
        _cellHeight = CGRectGetMaxY(_pictureF) + padding;
    }else{
        _cellHeight = CGRectGetMaxY(_textF) + padding;
    }
}

@end
