//
//  Judge.m
//  practice
//
//  Created by 陳永展 on 2020/5/3.
//  Copyright © 2020 allen. All rights reserved.
//

#import "Judge.h"

@implementation Judge


- (void)judgeWithPlayer:(Player *)player andRobot:(Robot *)robot
{
//    拿到玩家的拳頭
    FistType playerType = player -> _selectType;
    FistType robertType = robot -> _selectType;
    
    if (playerType - robertType == -2 || robertType - robertType == 1)
    {
        NSLog(@"恭喜玩家[%@]取得勝利",player->_name);
        player ->_score++;
    }else if (playerType == robertType)
    {
        NSLog(@"平手");
    }else
    {
        NSLog(@"機器人[%@]取得勝利",robot -> _name);
        robot ->_score++;
    }
    NSLog(
          @"--玩家:[%@]:[%d]----機器人:[%@]:[%d]--"
          ,player ->_name
          ,player ->_score
          ,robot -> _name
          ,robot ->_score
          );
    
    
    
}

@end
