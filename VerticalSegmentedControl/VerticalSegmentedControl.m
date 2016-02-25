//
//  VerticalSegmentedControl.m
//  VerticalSegmentedControl-Demo
//
//  Created by Vincent on 2/25/16.
//  Copyright © 2016 Vincent. All rights reserved.
//

#import "VerticalSegmentedControl.h"
#import "VerticalSegmentedControlTableViewCell.h"

#define CellReuseID @"VerticalSegmentedControl-TableViewCell-ReuseID"

@interface VerticalSegmentedControl () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) NSArray <NSString *>*titles;
@property (nonatomic, copy) VerticalSegmentedControlCallbackOnSelection callback;
@property (nonatomic, strong) UITableView *tableView;
@end

@implementation VerticalSegmentedControl
#pragma mark - APIs
- (instancetype)initWithFrame:(CGRect)frame rowHeight:(CGFloat)rowHeight titles:(NSArray <NSString *>*)titles selectedIndex:(NSUInteger)idx selectionCallback:(VerticalSegmentedControlCallbackOnSelection)callback{
    self = [super initWithFrame:frame];
    if (self) {
        self.titles = titles;
        self.callback = callback;
        [self createTableViewWithRowHeight:rowHeight];
        NSIndexPath *selectedIndexPath = [NSIndexPath indexPathForRow:idx inSection:0];
        [self.tableView selectRowAtIndexPath:selectedIndexPath animated:YES scrollPosition:UITableViewScrollPositionTop];
    }
    
    return self;
}

- (NSUInteger)selectedIndex {
    return self.tableView.indexPathForSelectedRow.row;
}

#pragma mark - Private Methods
- (void)createTableViewWithRowHeight:(CGFloat)rowHeight {
    self.tableView = [[UITableView alloc] initWithFrame:self.bounds];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.separatorColor = [UIColor whiteColor];
    [self.tableView registerNib:[UINib nibWithNibName:@"VerticalSegmentedControlTableViewCell" bundle:nil] forCellReuseIdentifier:CellReuseID];
    [self addSubview:self.tableView];
}

#pragma mark - Delegate Methods
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    VerticalSegmentedControlTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellReuseID forIndexPath:indexPath];
    [cell setSegmentTitle:self.titles[indexPath.row]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    [tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    if (self.callback) {
        self.callback(indexPath.row);
    }
}

@end
