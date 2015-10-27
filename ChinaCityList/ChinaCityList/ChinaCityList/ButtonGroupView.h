//
//  ButtonGroupView.h
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityButton.h"

@class ButtonGroupView;

@protocol ButtonGroupViewDelegate <NSObject>

@optional
- (void)ButtonGroupView:(ButtonGroupView *)buttonGroupView didClickedItem:(CityButton *)item;

@end

@interface ButtonGroupView : UIView

@property (nonatomic, strong) id package;
@property (nonatomic, assign) NSInteger columns;
@property (nonatomic, strong) NSArray *items;
@property (nonatomic, strong) NSMutableArray *buttons;
@property (nonatomic, assign) id<ButtonGroupViewDelegate> delegate;
@end
