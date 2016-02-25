//
//  VerticalSegmentedControlTableViewCell.m
//  VerticalSegmentedControl-Demo
//
//  Created by Vincent on 2/25/16.
//  Copyright © 2016 Vincent. All rights reserved.
//

#import "VerticalSegmentedControlTableViewCell.h"

@interface VerticalSegmentedControlTableViewCell ()
@property (weak, nonatomic) IBOutlet UIView *indicatorLine;
@property (weak, nonatomic) IBOutlet UILabel *title;
@end

@implementation VerticalSegmentedControlTableViewCell
- (void)setSegmentTitle:(NSString *)title {
    self.title.text = title;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    self.title.backgroundColor = selected ? [UIColor whiteColor] : [UIColor colorWithRed:0.9 green:0.9 blue:0.9 alpha:0.6];
    self.indicatorLine.hidden = !selected;
}

@end
