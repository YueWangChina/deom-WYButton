//
//  ViewController.m
//  deom
//
//  Created by wangyue on 16/10/29.
//  Copyright © 2016年 www.hopechina.cc 中和黄埔. All rights reserved.
//

#import "ViewController.h"
#import "WYButton.h"
#import "Masonry.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    WYButton *button =[WYButton buttonWithType:UIButtonTypeCustom];
 
    button.layoutStyle=2;
    [button setTitle:@"哈" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"微信"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
    }];
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
