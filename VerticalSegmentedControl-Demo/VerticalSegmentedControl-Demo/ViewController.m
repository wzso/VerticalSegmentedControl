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
    self.title = NSStringFromClass([VerticalSegmentedControl class]);
    
    NSMutableArray *titles = [NSMutableArray array];
    for (int i = 1; i <= 20; i ++) {
        NSString *title = [NSString stringWithFormat:@"Title%02d", i];
        [titles addObject:title];
    }
    NSLog(@"%@", titles);
    
    VerticalSegmentedControl *verticalSegmentedControl = [[VerticalSegmentedControl alloc] initWithFrame:CGRectMake(0, 0, 80.f, kSCREEN_HEIGHT) rowHeight:50.f titles:titles selectedIndex:5];
    [self.view addSubview:verticalSegmentedControl];
}

@end
