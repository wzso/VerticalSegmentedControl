//
//  VerticalSegmentedControl.h
//  VerticalSegmentedControl-Demo
//
//  Created by Vincent on 2/25/16.
//  Copyright © 2016 Vincent. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^VerticalSegmentedControlCallbackOnSelection)(NSUInteger selectedIndex);

///
@interface VerticalSegmentedControl : UIView
@property (nonatomic, readonly) NSUInteger selectedIndex;
/// Designated Initializer
- (instancetype)initWithFrame:(CGRect)frame rowHeight:(CGFloat)rowHeight titles:(NSArray <NSString *>*)titles selectedIndex:(NSUInteger)idx selectionCallback:(VerticalSegmentedControlCallbackOnSelection)callback;
@end
