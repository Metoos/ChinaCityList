//
//  ViewController.m
//  ChinaCityList
//
//  Created by zjq on 15/10/27.
//  Copyright © 2015年 zhengjq. All rights reserved.
//

#import "ViewController.h"
#import "CityListViewController.h"
@interface ViewController ()<CityListViewDelegate>
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)selectCityAction:(UIButton *)sender {
    
    CityListViewController *cityListView = [[CityListViewController alloc]init];
    cityListView.delegate = self;
    [self presentViewController:cityListView animated:YES completion:nil];
    
}

- (void)didClickedWithCityName:(NSString*)cityName
{
    [_button setTitle:cityName forState:UIControlStateNormal];
}

@end
