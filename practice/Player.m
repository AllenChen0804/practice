//
//  Player.m
//  practice
//
//  Created by 陳永展 on 2020/5/3.
//  Copyright © 2020 allen. All rights reserved.
//

#import "Player.h"

@implementation Player



- (void)showFist
{
    NSLog(@"親愛的玩家[%@]請選擇您要出的拳頭? 1:剪刀 2.石頭 3.布",_name);
    
    int userSelect = 0;
    scanf("%d" , &userSelect);
    
    NSString *Type = [self fistTypeWithNumber:userSelect];
    
    NSLog(@"玩家[%@]出的拳頭是[%@]",_name, Type);
    
    _selectType = userSelect;
    
    
    
}

- (NSString *)fistTypeWithNumber:(int)number
{
    switch (number) {
        case 1:
            return @"剪刀";
        case 2:
            return @"石頭";
        default:
            return @"布";
    
    }
}

@end
