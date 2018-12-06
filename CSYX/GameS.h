//
//  GameS.h
//  CSYX
//
//  Created by 扳扳 on 2018/12/5.
//  Copyright © 2018 扳扳. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameS : SKScene

@property (nonatomic,strong) SKSpriteNode *My;//自己

@property (nonatomic,strong) SKSpriteNode *Btn_Top;//向上
@property (nonatomic,strong) SKSpriteNode *Btn_Bottom;//向下
@property (nonatomic,strong) SKSpriteNode *Btn_Left;//向左
@property (nonatomic,strong) SKSpriteNode *Btn_Right;//向r右

@property (nonatomic,strong) NSArray      *arr_DT;//地图

@property (nonatomic,assign) BOOL         is_XD;//是否是在行动


@end

NS_ASSUME_NONNULL_END
