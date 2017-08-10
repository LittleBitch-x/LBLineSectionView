# LBLineSectionView
简单封装的tableView分割线，不会随tableView悬浮的。


# 使用方法：
-- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section <br /> 
{<br /> 
    //如果不传tableView和section，则会是默认效果，悬浮在视图上<br /> 
    LBLineSectionView *lineSectionView = [[LBLineSectionView alloc]initWithBaseTableView:tableView section:section sectionType:LBLineSectionType_footer height:10];<br /> 
    return lineSectionView;<br /> 
}<br /> 

