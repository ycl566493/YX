//
//  GameS.m
//  CSYX
//
//  Created by 扳扳 on 2018/12/5.
//  Copyright © 2018 扳扳. All rights reserved.
//

#import "GameS.h"

@interface GameS () {
    CGFloat DB_W;//地宽
    CGFloat DB_H;//地高
    NSInteger ZB;//坐标
    NSMutableArray *arr_Dt;//地图模板
}

@end

@implementation GameS

-(void)sceneDidLoad{
//    [super sceneDidLoad];
    
    //初始化地板宽高
    DB_W = self.size.width / 3;
    DB_H = DB_W;
    
    //初始化u坐标
    ZB = 24;
    
    [self init_DT];
    
    
    [self Add_My];
    
    [self Add_Btn];
    self.backgroundColor = SKColor.orangeColor;
    
    
}


- (void)UP_DT{
    NSInteger xx = ZB % 10;//横向坐标
    NSInteger yy = ZB / 10;//纵向坐标
    
    
}

#pragma mark- 添加上下左右按钮
- (void)Add_Btn{
    self.Btn_Top = [SKSpriteNode spriteNodeWithImageNamed:@"上"];
    self.Btn_Top.position = CGPointMake(100,150);
    self.Btn_Top.size = CGSizeMake(50, 50);
    self.Btn_Top.alpha = .5;
    self.Btn_Top.name = @"Top";
    self.Btn_Top.zPosition = 1.0;
    [self addChild:self.Btn_Top];
    
    self.Btn_Bottom = [SKSpriteNode spriteNodeWithImageNamed:@"下"];
    self.Btn_Bottom.position = CGPointMake(100,50);
    self.Btn_Bottom.size = CGSizeMake(50, 50);
    self.Btn_Bottom.alpha = .5;
    self.Btn_Bottom.name = @"Bottom";
    self.Btn_Bottom.zPosition = 1.0;
    [self addChild:self.Btn_Bottom];
    
    self.Btn_Left = [SKSpriteNode spriteNodeWithImageNamed:@"左"];
    self.Btn_Left.position = CGPointMake(50,100);
    self.Btn_Left.size = CGSizeMake(50, 50);
    self.Btn_Left.alpha = .5;
    self.Btn_Left.name = @"Left";
    self.Btn_Left.zPosition = 1.0;
    [self addChild:self.Btn_Left];
    
    self.Btn_Right = [SKSpriteNode spriteNodeWithImageNamed:@"右"];
    self.Btn_Right.position = CGPointMake(150,100);
    self.Btn_Right.size = CGSizeMake(50, 50);
    self.Btn_Right.alpha = .5;
    self.Btn_Right.name = @"Right";
    self.Btn_Right.zPosition = 1.0;
    [self addChild:self.Btn_Right];
}
#pragma mark- 点击手指
-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    [self CaoZuo:touches withEvent:event];
}
#pragma mark-  持续移动手指
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
       [self CaoZuo:touches withEvent:event];
}
- (void)CaoZuo:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKSpriteNode *touchedNode = (SKSpriteNode *)[self nodeAtPoint:location];
    if ([touchedNode.name isEqualToString:@"Top"]) {
        NSLog(@"上");
    }
    if ([touchedNode.name isEqualToString:@"Bottom"]) {
        NSLog(@"下");
    }
    if ([touchedNode.name isEqualToString:@"Left"]) {
        NSLog(@"左");
    }
    if ([touchedNode.name isEqualToString:@"Right"]) {
        NSLog(@"右");
    }
}


#pragma mark- 添加精灵
- (void)Add_My{
    self.My = [SKSpriteNode spriteNodeWithImageNamed:@"小鬼"];
//    self.My.position = CGPointMake(self.My.size.width / 2, self.size.height / 2);
    self.My.position = CGPointMake(200, 200);

    [self addChild:self.My];
}


- (void)init_DT{
//    1 地砖  2 山坡 3河流
    self.arr_DT = @[@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",
                    @"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",
                    @"1",@"1",@"1",@"2",@"1",@"2",@"1",@"1",@"1",@"1",
                    @"1",@"1",@"1",@"2",@"1",@"2",@"1",@"3",@"1",@"1",
                    @"1",@"1",@"2",@"2",@"2",@"2",@"2",@"1",@"3",@"1",
                    @"1",@"1",@"1",@"3",@"1",@"2",@"2",@"3",@"3",@"1",
                    @"1",@"1",@"1",@"1",@"3",@"1",@"1",@"1",@"1",@"1",
                    @"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"3",@"1",
                    @"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",
                    @"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",@"1",
                    
                    ];
}

@end
