//
//  YYPTableViewCell.h
//  Sina-20141228
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 yyp. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YYPStatusFrame;

@interface YYPTableViewCell : UITableViewCell

@property (nonatomic,strong) YYPStatusFrame *statusFrame;

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@end
