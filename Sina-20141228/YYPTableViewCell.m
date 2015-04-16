//
//  YYPTableViewCell.m
//  Sina-20141228
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 yyp. All rights reserved.
//

#import "YYPTableViewCell.h"
#import "YYPStatusFrame.h"
#import "YYPStatus.h"

#define YYPNameFont [UIFont systemFontOfSize:14]
#define YYPTextFont [UIFont systemFontOfSize:16]

@interface YYPTableViewCell()

@property (nonatomic,weak) UIImageView *iconView;
@property (weak, nonatomic) UILabel *nameView;
@property (weak, nonatomic) UIImageView *vipView;
@property (weak, nonatomic) UILabel *textView;
@property (weak, nonatomic) UIImageView *pictureView;

- (void)settingData;
- (void)settingFrame;

@end

@implementation YYPTableViewCell

- (void)setStatusFrame:(YYPStatusFrame *)statusFrame
{
    _statusFrame = statusFrame;
    
    [self settingData];
    
    [self settingFrame];
}

- (void)settingData
{
    YYPStatus *status = self.statusFrame.status;
    self.iconView.image = [UIImage imageNamed:status.icon];
    
    self.nameView.text = status.name;
    
    if (status.vip) {
        self.vipView.hidden = NO;
    }else{
        self.vipView.hidden = YES;
    }
    
    self.textView.text = status.text;
    
    if (status.picture) {
        self.pictureView.image = [UIImage imageNamed:status.picture];
        self.pictureView.hidden = NO;
    }else{
        self.pictureView.hidden = YES;
    }
}

- (void)settingFrame
{
    _iconView.frame = self.statusFrame.iconF;
    
    _nameView.frame = self.statusFrame.nameF;
    
    _vipView.frame = self.statusFrame.vipF;
    
    _textView.frame = self.statusFrame.textF;
    
    if (self.statusFrame.status.picture) {
        _pictureView.frame = self.statusFrame.pictureF;
    }
}

+ (instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID = @"status";
    YYPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[YYPTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    return cell;
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        UIImageView *iconView = [[UIImageView alloc] init];
        [self.contentView addSubview:iconView];
        self.iconView = iconView;
        
        UILabel *name = [[UILabel alloc] init];
        [self.contentView addSubview:name];
        name.font = YYPNameFont;
        self.nameView = name;
        
        UIImageView *vipIcon = [[UIImageView alloc] init];
        [self.contentView addSubview:vipIcon];
        vipIcon.image = [UIImage imageNamed:@"vip"];
        self.vipView = vipIcon;
        
        UILabel *text = [[UILabel alloc] init];
        text.numberOfLines = 0;
        text.font = YYPTextFont;
        [self.contentView addSubview:text];
        self.textView = text;
        
        UIImageView *pictureView = [[UIImageView alloc] init];
        [self.contentView addSubview:pictureView];
        self.pictureView = pictureView;
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
