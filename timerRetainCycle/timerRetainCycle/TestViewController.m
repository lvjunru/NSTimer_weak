//
//  TestViewController.m
//  timerRetainCycle
//
//  Created by Lv on 2018/8/3.
//  Copyright © 2018年 Lv. All rights reserved.
//

#import "TestViewController.h"
#import "FirstView.h"
#import "SecondView.h"
#import "ThirdView.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    FirstView *first = [[FirstView alloc] initWithFrame:CGRectMake(50, 50, 250, 100)];
    [self.view addSubview:first];
    first.backgroundColor = [UIColor redColor];
    
    SecondView *second = [[SecondView alloc] initWithFrame:CGRectMake(50, 200, 250, 100)];
    [self.view addSubview:second];
    second.backgroundColor = [UIColor greenColor];
    
    ThirdView *third = [[ThirdView alloc] initWithFrame:CGRectMake(50, 350, 250, 100)];
    [self.view addSubview:third];
    third.backgroundColor = [UIColor blueColor];
    
}



@end
