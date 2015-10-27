//
//  CityButton.h
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CityItem.h"
@interface CityButton : UIButton

@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) CityItem *cityItem;

@end
