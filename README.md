# VerticalSegmentedControl
Vertical segmented control. 一款简单的竖直选项卡，类似亚马逊和京东App的分类选项卡。

如图：

![Demo.gif](https://github.com/wenzhishen/VerticalSegmentedControl/blob/master/Demo.gif)

使用简单。一行搞定行高，文字，默认选中和回调：

```
VerticalSegmentedControl *verticalSegmentedControl = [[VerticalSegmentedControl alloc] initWithFrame:frame rowHeight:50.f titles:titles selectedIndex:0 selectionCallback:^(NSUInteger selectedIndex) {
        // Callback on selecting a row.
}];
```
