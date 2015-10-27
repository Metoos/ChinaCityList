//
//  CityItem.h
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CityItem : NSObject

@property (nonatomic, assign) NSInteger key;
@property (nonatomic, copy) NSString *titleName;

- (instancetype)initWithTitleName:(NSString *)titleName;
+ (instancetype)initWithTitleName:(NSString *)titleName;

@end
