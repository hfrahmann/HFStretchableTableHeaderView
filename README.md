HFStretchableTableHeaderView
==========================

Stretchable TableHeaderView for iOS.



![Screenshot](https://raw.github.com/hfrahmann/HFStretchableTableHeaderView/master/HFStretchableTableHeaderView.gif)


How to use it
-------------


```
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
```


License
-------

This project is licensed under the MIT-License.