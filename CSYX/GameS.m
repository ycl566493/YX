//
//  GameS.m
//  CSYX
//
//  Created by 扳扳 on 2018/12/5.
//  Copyright © 2018 扳扳. All rights reserved.
//

#import "GameS.h"

@implementation GameS

-(void)sceneDidLoad{
//    [super sceneDidLoad];
    [self Add_My];
    
    [self Add_Btn];
}

#pragma mark- 添加上下左右按钮
- (void)Add_Btn{
    self.Btn_Top = [SKSpriteNode spriteNodeWithImageNamed:@"小鬼"];
    self.Btn_Top.position = CGPointMake(100,100);
    self.Btn_Top.name = @"Top";
    self.Btn_Top.zPosition = 1.0;
    [self addChild:self.Btn_Top];
    
    self.Btn_Bottom = [SKSpriteNode spriteNodeWithImageNamed:@"小鬼"];
    self.Btn_Bottom.position = CGPointMake(100,50);
    self.Btn_Bottom.name = @"Bottom";
    self.Btn_Bottom.zPosition = 1.0;
    [self addChild:self.Btn_Bottom];
    
    self.Btn_Left = [SKSpriteNode spriteNodeWithImageNamed:@"小鬼"];
    self.Btn_Left.position = CGPointMake(75,75);
    self.Btn_Left.name = @"Left";
    self.Btn_Left.zPosition = 1.0;
    [self addChild:self.Btn_Left];
    
    self.Btn_Right = [SKSpriteNode spriteNodeWithImageNamed:@"小鬼"];
    self.Btn_Right.position = CGPointMake(125,75);
    self.Btn_Right.
    self.Btn_Right.name = @"Right";
    self.Btn_Right.zPosition = 1.0;
    [self addChild:self.Btn_Right];
}

#pragma mark- 添加精灵
- (void)Add_My{
    self.My = [SKSpriteNode spriteNodeWithImageNamed:@"小鬼"];
//    self.My.position = CGPointMake(self.My.size.width / 2, self.size.height / 2);
    self.My.position = CGPointMake(200, 200);

    [self addChild:self.My];
}

@end
