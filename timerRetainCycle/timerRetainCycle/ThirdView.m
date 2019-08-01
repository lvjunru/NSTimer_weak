//
//  ThirdView.m
//  timerRetainCycle
//
//  Created by 测试 on 2019/8/1.
//  Copyright © 2019 Lv. All rights reserved.
//

#import "ThirdView.h"
#import "LvWeakTimer.h"

@interface ThirdView ()

@property (strong, nonatomic) UILabel *label;

@property (assign, nonatomic) NSInteger num;

@property (nonatomic , strong) NSTimer *timer;

@end

@implementation ThirdView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (void)setup {
    
    [self addSubview:self.label];
    
    self.timer = [LvWeakTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerAction) userInfo:nil repeats:YES];
}

- (void)timerAction {
    
    self.num += 3;
    self.label.text = [NSString stringWithFormat:@"我是view3: %ld", self.num];
}

- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.center = CGPointMake(self.bounds.size.width/2, self.bounds.size.height/2);
        _label.bounds = CGRectMake(0, 0, 130, 30);
        _label.textColor = [UIColor whiteColor];
        _label.font = [UIFont systemFontOfSize:18];
    }
    return _label;
}

-(void)dealloc {
    NSLog(@"%s", __func__);
    [self.timer invalidate];
    self.timer = nil;
}
@end
