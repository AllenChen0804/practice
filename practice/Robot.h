//
//  Robot.h
//  practice
//
//  Created by 陳永展 on 2020/5/3.
//  Copyright © 2020 allen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FistType.h"


@interface Robot : NSObject

{
    @public
    NSString *_name;
    int _score;
    FistType _selectType;
}

- (void)showFist;

- (NSString *)fistTypeWithNumber:(int )number;




@end


