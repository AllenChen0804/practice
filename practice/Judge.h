//
//  Judge.h
//  practice
//
//  Created by 陳永展 on 2020/5/3.
//  Copyright © 2020 allen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Robot.h"



@interface Judge : NSObject

{
    @public
    NSString *_name ;
    
    
}

- (void)judgeWithPlayer:(Player *)player andRobot:(Robot *)robot;

@end


