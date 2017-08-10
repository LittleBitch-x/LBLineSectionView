//
//  LBLineSectionView.m
//  Wubing
//
//  Created by 李祖建 on 17/3/2.
//  Copyright © 2017年 LittleBitch. All rights reserved.
//

#import "LBLineSectionView.h"



@implementation LBLineSectionView

- (instancetype)initWithBaseTableView:(UITableView *)tableView section:(NSInteger)section sectionType:(LBLineSectionType)sectionType height:(CGFloat)height
{
    self = [super init];
    if (self) {
        
        self.sectionType = sectionType;
        self.tableView = tableView;
        self.section = section;
        self.frame = CGRectMake(0, 0, MAINSCRREN_W, height);
        self.backgroundColor = GRAYBG_COLOR;
        
        [self addSubview:self.lineView];
        
    }
    return self;
}



- (void)setFrame:(CGRect)frame
{
    if (self.tableView) {
        CGRect sectionRect = [self.tableView rectForFooterInSection:self.section];
        if (self.sectionType == LBLineSectionType_header) {
            sectionRect = [self.tableView rectForHeaderInSection:self.section];
        }
        CGRect newFrame = CGRectMake(CGRectGetMinX(frame), CGRectGetMinY(sectionRect), CGRectGetWidth(frame), CGRectGetHeight(frame));
        [super setFrame:newFrame];
    }else{
        [super setFrame:frame];
    }
}

#pragma mark - getter
- (UIView *)lineView
{
    if (!_lineView) {
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, MAINSCRREN_W, 1)];
        lineView.backgroundColor = _DCDCDC;
        _lineView = lineView;
    }
    return _lineView;
}

@end
