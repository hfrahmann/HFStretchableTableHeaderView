//
//  StretchTableHeaderService.m
//  StretchTest
//
//  Created by Hendrik Frahmann on 17.03.14.
//  Copyright (c) 2014 new media company GmbH & Co. KG. All rights reserved.
//

#import "StretchTableHeaderService.h"

@interface StretchTableHeaderService()
{
    CGRect initialFrame;
    CGFloat defaultViewHeight;
}
@end


@implementation StretchTableHeaderService

@synthesize tableView = _tableView;
@synthesize view = _view;

- (void)stretchingHeaderForTableView:(UITableView*)tableView withView:(UIView*)view
{
    _tableView = tableView;
    _view = view;
    
    initialFrame       = _view.frame;
    defaultViewHeight  = initialFrame.size.height;
    
    UIView* emptyTableHeaderView = [[UIView alloc] initWithFrame:initialFrame];
    _tableView.tableHeaderView = emptyTableHeaderView;
    
    [_tableView addSubview:_view];
}

- (void)scrollViewDidScroll:(UIScrollView*)scrollView
{
    CGRect f = _view.frame;
    f.size.width = _tableView.frame.size.width;
    _view.frame = f;
    
    if(scrollView.contentOffset.y < 0) {
        CGFloat offsetY = (scrollView.contentOffset.y + scrollView.contentInset.top) * -1;
        initialFrame.origin.y = offsetY * -1;
        initialFrame.size.height = defaultViewHeight + offsetY;
        _view.frame = initialFrame;
    }
}

- (void)resizeView
{
    initialFrame.size.width = _tableView.frame.size.width;
    _view.frame = initialFrame;
}


@end
