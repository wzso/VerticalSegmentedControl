# VerticalSegmentedControl
Vertical segmented control. 一款简单的竖直选项卡，类似亚马逊和京东App的分类选项卡。

运行效果如图：

![Demo.gif](https://github.com/wenzhishen/VerticalSegmentedControl/blob/master/Demo.gif)

## 使用简单。一行搞定行高，文字，默认选中和回调：

```
VerticalSegmentedControl *verticalSegmentedControl = [[VerticalSegmentedControl alloc] initWithFrame:frame rowHeight:50.f titles:titles selectedIndex:0 selectionCallback:^(NSUInteger selectedIndex) {
        // Callback on selecting a row.
}];
```

## 滚动到选中位置

Demo中，选中一个条目后，选中条目会自动滚动到最顶部（只要它下面的条目够多）。你可以在 `-[VerticalSegmentedControl tableView:didSelectRowAtIndexPath:]` 修改，将 `UITableViewScrollPositionTop` 修改为其他值。

```
[tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
```

如果这个 demo 对你有用的话，欢迎 Star :)
