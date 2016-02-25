//
//  ViewController.m
//  VerticalSegmentedControl-Demo
//
//  Created by Vincent on 2/25/16.
//  Copyright © 2016 Vincent. All rights reserved.
//

#import "ViewController.h"
#import "VerticalSegmentedControl/VerticalSegmentedControl.h"

#define kSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Vertical Segmented Control";
    
    NSMutableArray *titles = [NSMutableArray array];
    for (int i = 1; i <= 30; i ++) {
        NSString *title = [NSString stringWithFormat:@"Index-%02d", i];
        [titles addObject:title];
    }
    
    __weak typeof(self) weakSelf = self;
    VerticalSegmentedControl *verticalSegmentedControl = [[VerticalSegmentedControl alloc] initWithFrame:CGRectMake(0, 64.f, 80.f, kSCREEN_HEIGHT - 64.f) rowHeight:50.f titles:titles selectedIndex:0 selectionCallback:^(NSUInteger selectedIndex) {
        weakSelf.titleLabel.text = [NSString stringWithFormat:@"Selected index: %zd", selectedIndex];
    }];
    [self.view addSubview:verticalSegmentedControl];
}

@end
