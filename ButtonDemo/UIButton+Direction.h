//
//  UIButton+Direction.h
//  ButtonDemo
//
//  Created by litao on 17/1/19.
//  Copyright © 2017年 zengtao. All rights reserved.
//

#import <UIKit/UIKit.h>

//图片在button中相对于文字的位置
typedef NS_ENUM(NSInteger, UIButtonDirection) {
    UIButtonDirectionTop,
    UIButtonDirectionLeft,
    UIButtonDirectionBottom,
    UIButtonDirectionRight,
};

@interface UIButton (Direction)

//title、image设置好之后再调用此方法
-(void)applayDirection:(UIButtonDirection)direction imgTitleSpace:(CGFloat)margin;

@end
