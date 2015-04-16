//
//  ViewController.m
//  Sina-20141228
//
//  Created by Mac on 14-12-28.
//  Copyright (c) 2014年 yyp. All rights reserved.
//

#import "YYPViewController.h"
#import "YYPStatus.h"
#import "YYPTableViewCell.h"
#import "YYPStatusFrame.h"

@interface YYPViewController ()
@property (nonatomic,strong) NSArray *statusFrame;
@end

@implementation YYPViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.statusFrame.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YYPTableViewCell *cell = [YYPTableViewCell cellWithTableView:tableView];
    
    cell.statusFrame = self.statusFrame[indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    YYPStatusFrame *statusFrame = self.statusFrame[indexPath.row];
    return statusFrame.cellHeight;
}

- (NSArray *)statusFrame
{
    if (_statusFrame == nil) {
        NSString *path = [[NSBundle mainBundle] pathForResource:@"statuses.plist" ofType:nil];
        NSArray *arrayData = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *statusArray = [NSMutableArray array];
        for (NSDictionary *dict in arrayData) {
            YYPStatus *status = [YYPStatus statusWithDict:dict];
            YYPStatusFrame *statusFrame = [[YYPStatusFrame alloc] init];
            statusFrame.status = status;
            
            [statusArray addObject:statusFrame];
        }
        _statusFrame = statusArray;
    }
    return _statusFrame;
}

@end
