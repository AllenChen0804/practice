//
//  Player.h
//  practice
//
//  Created by 陳永展 on 2020/5/3.
//  Copyright © 2020 allen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FistType.h"


@interface Player : NSObject

{
    @public
    //玩家的名稱
    NSString *_name;
    //玩家的分數
    int _score;
    //玩家選擇的拳頭
    FistType _selectType;
}

- (void)showFist;


- (NSString *)fistTypeWithNumber:(int)number;




@end


