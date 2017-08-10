//
//  LBLineSectionView.h
//  Wubing
//
//  Created by 李祖建 on 17/3/2.
//  Copyright © 2017年 LittleBitch. All rights reserved.
//

#import <UIKit/UIKit.h>


typedef NS_ENUM(NSInteger,LBLineSectionType) {
    LBLineSectionType_header = 0,
    LBLineSectionType_footer
};

@interface LBLineSectionView : UIView

@property (strong, nonatomic) UIView *lineView;

@property (weak, nonatomic) UITableView *tableView;
@property (assign, nonatomic) NSInteger section;
@property (assign, nonatomic) LBLineSectionType sectionType;



/**
 初始化footerSectionView

 @param tableView 所属tableView
 @param section 所属section
 @param sectionType section类型Header/Footer
 @param height section高度
 @return LBLineSectionView
 */
- (instancetype)initWithBaseTableView:(UITableView *)tableView section:(NSInteger)section sectionType:(LBLineSectionType)sectionType height:(CGFloat)height;

@end
