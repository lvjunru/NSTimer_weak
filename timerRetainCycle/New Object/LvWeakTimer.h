//
//  LvWeakTimer.h
//  timerRetainCycle
//
//  Created by 测试 on 2019/8/1.
//  Copyright © 2019 Lv. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface LvWeakTimer : NSObject
+ (NSTimer *) scheduledTimerWithTimeInterval:(NSTimeInterval)ti target:(id)aTarget selector:(SEL)aSelector userInfo:(id)userInfo repeats:(BOOL)repeats;
@end

