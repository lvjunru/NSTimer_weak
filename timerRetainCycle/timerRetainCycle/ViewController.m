//
//  ViewController.m
//  timerRetainCycle
//
//  Created by Lv on 2018/8/3.
//  Copyright © 2018年 Lv. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}


- (IBAction)pushTestVC:(UIButton *)sender {
    
    TestViewController *vc = [[TestViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end





