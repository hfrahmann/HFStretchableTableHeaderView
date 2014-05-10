//
//  StretchTableHeaderService.h
//  StretchTest
//
//  Created by Hendrik Frahmann on 17.03.14.
//  Copyright (c) 2014 new media company GmbH & Co. KG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StretchTableHeaderService : NSObject

@property (nonatomic,retain) UITableView* tableView;
@property (nonatomic,retain) UIView* view;

- (void)stretchingHeaderForTableView:(UITableView*)tableView withView:(UIView*)view;
- (void)scrollViewDidScroll:(UIScrollView*)scrollView;
- (void)resizeView;

@end
