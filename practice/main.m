/*
 猜拳遊戲流程
 
1. 玩家出拳
2. 機器人出拳
3. 裁判宣布比賽結果
 
 面向對象的重點在於找類
 
 玩家類
 屬性 姓名 選擇的拳頭 得分
 方法 出拳 -> 自行選擇一個拳頭來出

 
 機器人類
 屬性 姓名 選擇的拳頭 得分
 方法 出拳 -> 隨機出拳
 
 裁判類
 屬性 姓名
 方法 判斷輸贏顯示分數
 
 枚舉或者結構體定義在什麼地方
 如果只是1個類要用，那麼就定義在這個類的頭文件中;
 如果多個類要用，那麼就定義在1個單獨的頭文件中  誰要用誰去引就可以了
 
 如果要在方法中調用當前對象的另外一個方法
 
 [self 方法名];
 self代表當前對象.
 

 */

#import <Foundation/Foundation.h>
#import "Player.h"
#import "Robot.h"
#import "Judge.h"

int main(int argc, const char * argv[]) {
    
    Player *p1 = [Player new];
    p1 -> _name = @"小明";
    
   
    Robot *r1 = [Robot new];
    r1 -> _name = @"阿法狗";
    
    
    Judge *j1 = [Judge new];
    j1 -> _name = @"黑哨";
    
    
    while (1) {
        [p1 showFist];
        [r1 showFist];
        [j1 judgeWithPlayer:p1 andRobot:r1];
        
        NSLog(@"親在玩一把嗎？ y/n");
         char ans = 'a';
             rewind(stdin);
           scanf("%c" , &ans);
        
        if (ans != 'y') {
          
            NSLog(@"歡迎再來");
            break;
        }
        
        
    }
    
    
   
    
    
    
    
    
}
