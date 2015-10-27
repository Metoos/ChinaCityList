//
//  CityButton.m
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//

#import "CityButton.h"
#define IsNilOrNull(_ref) (((_ref) == nil) || ([(_ref) isEqual:[NSNull null]]))
#define kCityItemViewTitleTextW 80
#define kCityItemViewTitleTextH 25
#define kCityItemViewTitleTextFont 15
@interface CityButton ()

@property (nonatomic, weak) UIView *container;
@property (nonatomic, weak) UILabel *titleName;

@end

@implementation CityButton

- (id)init
{
    
    if (self = [super init]) {
        // Custom initialization
        self.backgroundColor     = [UIColor whiteColor];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius  = self.frame.size.width/20;
        self.layer.borderColor   = [UIColor colorWithRed:220/255.0 green:220/255.0 blue:220/255.0 alpha:1].CGColor;
        self.layer.borderWidth   = 1;
        
        [self setupViews];
    }
    return self;
}

- (void)setupViews {
    
    UIView *container = [[UIView alloc] init];
    
    container.userInteractionEnabled = NO;
    container.backgroundColor = [UIColor clearColor];

    
    UILabel *titleName = [[UILabel alloc] init];
    titleName.font = [UIFont systemFontOfSize:kCityItemViewTitleTextFont];
    titleName.textColor = [UIColor grayColor];
    titleName.textAlignment = NSTextAlignmentCenter;
    titleName.backgroundColor = [UIColor clearColor];
    titleName.numberOfLines = 1;
    [container addSubview:titleName];
    
    self.titleName = titleName;
    
    [self addSubview:container];
    
    self.container = container;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];

    self.container.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    self.titleName.frame = CGRectMake(0, 0, self.container.frame.size.width, self.container.frame.size.height);
}

- (void)setCityItem:(CityItem *)cityItem
{
    
    _cityItem = cityItem;
    
    if (!IsNilOrNull(_cityItem)) {
        
 
        self.titleName.text = _cityItem.titleName;
//        [self setTitle:_cityItem.titleName forState:UIControlStateNormal];
        
        
        
    }
}

@end
