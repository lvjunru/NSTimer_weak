//
//  LvWeakTimer.m
//  timerRetainCycle
//
//  Created by 测试 on 2019/8/1.
//  Copyright © 2019 Lv. All rights reserved.
//

#import "LvWeakTimer.h"

@interface LvTimerTarget : NSObject
// 目标对象
@property (nonatomic,weak) id target;
// 目标方法
@property (nonatomic,assign) SEL selector;
// NSTimer实例
@property (nonatomic, weak) NSTimer *timer;

@end

@implementation LvTimerTarget

- (void) fire
{
    if(self.target)
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self.target performSelector:self.selector withObject:nil];
#pragma clang diagnostic pop
    }
    else
    {
        [self.timer invalidate];
    }
}

@end

@implementation LvWeakTimer

+ (NSTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)repeats
{
    LvTimerTarget* timerTarget = [[LvTimerTarget alloc] init];
    timerTarget.target = aTarget;
    timerTarget.selector = aSelector;
    timerTarget.timer = [NSTimer scheduledTimerWithTimeInterval:ti target:timerTarget selector:@selector(fire) userInfo:userInfo repeats:repeats];
    return timerTarget.timer;
}
@end
