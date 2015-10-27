//
//  CityListViewController.m
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//
#import <UIKit/UIKit.h>

@protocol CityListViewDelegate <NSObject>

- (void)didClickedWithCityName:(NSString*)cityName;

@end


@interface CityListViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (strong, nonatomic) id<CityListViewDelegate>delegate;



@property (strong, nonatomic) NSMutableArray *arrayLocatingCity;//定位城市数据
@property (strong, nonatomic) NSMutableArray *arrayHotCity;//热门城市数据
@property (strong, nonatomic) NSMutableArray *arrayHistoricalCity;//常用城市数据

@property(nonatomic,strong)UITableView *tableView;

@end
