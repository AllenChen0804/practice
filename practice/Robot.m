//
//  Robot.m
//  practice
//
//  Created by 陳永展 on 2020/5/3.
//  Copyright © 2020 allen. All rights reserved.
//

#import "Robot.h"
//#import <stdlib.h>



@implementation Robot

- (void)showFist
{
    NSArray *arr = @[@"剪刀" , @"石頭" ,@"布"];
    int roberSelect = arc4random() % arr.count ;
//    NSLog(@"%d",roberSelect);
    NSString *type = [self fistTypeWithNumber:roberSelect];
    NSLog(@"機器人[%@]出的拳頭是[%@]",_name ,type);
    _selectType = roberSelect;
    
}

- (NSString *)fistTypeWithNumber:(int )number
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
