//
//  CityItem.m
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//

#import "CityItem.h"

@implementation CityItem

- (instancetype)initWithTitleName:(NSString *)titleName {
    if (self = [super init]) {
        self.titleName = [NSString stringWithFormat:@"%@",titleName];
    }
    return self;
}

+ (instancetype)initWithTitleName:(NSString *)titleName {
    
    return [[self alloc] initWithTitleName:titleName];
}



@end
