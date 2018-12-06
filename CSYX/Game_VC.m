//
//  Game_VC.m
//  CSYX
//
//  Created by 扳扳 on 2018/12/5.
//  Copyright © 2018 扳扳. All rights reserved.
//

#import "Game_VC.h"
#import "GameS.h"
#import <SpriteKit/SpriteKit.h>
#import <GameplayKit/GameplayKit.h>

@interface Game_VC ()

@property (nonatomic,strong)GameS *game;

@end

@implementation Game_VC

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.game = [[GameS alloc]initWithSize:self.view.frame.size];
    self.game.name = @"youxi";
    self.game.scaleMode = SKSceneScaleModeAspectFill;
    SKView *vvv = (SKView* )self.view;
    [vvv presentScene:self.game];
    vvv.showsFPS = YES;
    vvv.showsNodeCount = YES;

    
    //开启和监听 设备旋转的通知（不开启的话，设备方向一直是UIInterfaceOrientationUnknown）
    if (![UIDevice currentDevice].generatesDeviceOrientationNotifications) {
        [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    }
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(handleStatusBarOrientationChange:)
                                                name:UIDeviceOrientationDidChangeNotification object:nil];
}

//取宽高中的最大值k最为高 旋转屏幕使用
#define SCREEN_HEIGHT CGRectGetHeight([[UIScreen mainScreen] bounds])
#define SCREEN_WIDTH  CGRectGetWidth([[UIScreen mainScreen] bounds])
#define SCREEN_MIN MIN(SCREEN_HEIGHT,SCREEN_WIDTH)
#define SCREEN_MAX MAX(SCREEN_HEIGHT,SCREEN_WIDTH)

- (void)handleStatusBarOrientationChange: (NSNotification *)notification{
    UIInterfaceOrientation interfaceOrientation = [[UIApplication sharedApplication] statusBarOrientation];
    BOOL isLandscape = NO;
    switch (interfaceOrientation) {
        case UIInterfaceOrientationUnknown:
            NSLog(@"未知方向");
            break;
        case UIInterfaceOrientationPortrait:
        case UIInterfaceOrientationPortraitUpsideDown:
            isLandscape = NO;
            break;
        case UIInterfaceOrientationLandscapeLeft:
        case UIInterfaceOrientationLandscapeRight:
            isLandscape = YES;
            break;
        default:
            break;
    }
    if (isLandscape) {
        self.game.size = CGSizeMake( SCREEN_MAX, SCREEN_MIN - 44);
    }else{
        self.game.size = CGSizeMake( SCREEN_MIN, SCREEN_MAX - 64);
    }
}

//最后在dealloc中移除通知 和结束设备旋转的通知
- (void)dealloc{
    //...
    [[NSNotificationCenter defaultCenter]removeObserver:self];
    [[UIDevice currentDevice]endGeneratingDeviceOrientationNotifications];
}

- (void)loadView{
    self.view = [[SKView alloc]initWithFrame:[UIScreen mainScreen].bounds];
}

- (BOOL)shouldAutorotate {
    return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    } else {
        return UIInterfaceOrientationMaskAll;
    }
}

- (BOOL)prefersStatusBarHidden {
    return YES;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
