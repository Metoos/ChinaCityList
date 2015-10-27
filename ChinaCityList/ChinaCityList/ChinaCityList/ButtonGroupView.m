//
//  ButtonGroupView.m
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//

#import "ButtonGroupView.h"
#import "CityItem.h"
#define isWidthOddNumber (int)self.frame.size.width % self.columns != 0
#define kGridLineHeight 1
#define kItmeSpacing 15
//#define ContentViewWidth 
@implementation ButtonGroupView

- (NSMutableArray *)buttons {
    if (_buttons == nil) {
        _buttons = [NSMutableArray array];
    }
    return _buttons;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    CGFloat width  = self.frame.size.width;
    long i = (_columns+1)*kItmeSpacing;
    CGFloat a = width-i;
    CGFloat buttonW = a / _columns;
    
    if (isWidthOddNumber) { //iphone6或iphone6+
        buttonW = (int)round(buttonW);
    }
    
    long rowNum  = _items.count/_columns + (_items.count%_columns==0?0:1);
    
    CGFloat buttonH = (self.frame.size.height-rowNum*kItmeSpacing) / ((self.items.count - 1) / self.columns + 1);
    
    for (int index = 0; index < self.items.count; index++) {
        
        if (isWidthOddNumber) {
            if ((index + 1) * self.columns == 0) {
                buttonW = buttonW - 1;
            }
        }
        
        // i这个位置对应的列数
        int col = index % self.columns;
        // i这个位置对应的行数
        int row = index / self.columns;
        
        CGFloat buttonX = col * (buttonW+kItmeSpacing)+kItmeSpacing;
        CGFloat buttonY = row * (buttonH+kItmeSpacing);
        
        [self.buttons[index] setFrame:CGRectMake(buttonX, buttonY, buttonW, buttonH)];
    }
}

- (void)setItems:(NSArray *)items {
    
    _items = items;
    
    for (CityButton *cityButton in self.subviews) {
        [cityButton removeFromSuperview];
    }
    [self.buttons removeAllObjects];
    
    for (int index = 0; index < self.items.count; index++) {
        
        CityButton *cityButton = [[CityButton alloc] init];
        
        cityButton.tag = index;
        cityButton.index = index;
        cityButton.cityItem = self.items[index];

        
        [cityButton addTarget:self action:@selector(itemclick:) forControlEvents:UIControlEventTouchUpInside];
        
        [self addSubview:cityButton];
        [self.buttons addObject:cityButton];
        
    }
}

- (void)itemclick:(CityButton *)cityButton {
    if ([self.delegate respondsToSelector:@selector(ButtonGroupView:didClickedItem:)]) {
        [self.delegate ButtonGroupView:self didClickedItem:cityButton];
    }
}

@end
