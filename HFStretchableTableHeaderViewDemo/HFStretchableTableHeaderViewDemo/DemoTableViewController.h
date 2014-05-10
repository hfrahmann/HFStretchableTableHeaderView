//
//  ImageTableViewController.h
//  StretchableTableHeaderViewDemo
//
//  Created by Hendrik Frahmann on 10.05.14.
//  Copyright (c) 2014 Hendrik Frahmann. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HFStretchableTableHeaderView.h"

@interface DemoTableViewController : UITableViewController

@property (nonatomic, strong) IBOutlet UIView* stretchView;
@property (nonatomic, strong) HFStretchableTableHeaderView* stretchableTableHeaderView;

@end
