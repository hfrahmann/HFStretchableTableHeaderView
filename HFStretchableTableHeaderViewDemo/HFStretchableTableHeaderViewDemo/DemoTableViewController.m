//
//  ImageTableViewController.m
//  StretchableTableHeaderViewDemo
//
//  Created by Hendrik Frahmann on 10.05.14.
//  Copyright (c) 2014 Hendrik Frahmann. All rights reserved.
//

#import "DemoTableViewController.h"

@implementation DemoTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _stretchableTableHeaderView = [HFStretchableTableHeaderView new];
    [_stretchableTableHeaderView stretchHeaderForTableView:self.tableView withView:_stretchView];
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    [_stretchableTableHeaderView scrollViewDidScroll:scrollView];
}

- (void)viewDidLayoutSubviews
{
    [_stretchableTableHeaderView resizeView];
}


@end
