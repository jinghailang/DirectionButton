//
//  UIButton+Direction.m
//  ButtonDemo
//
//  Created by litao on 17/1/19.
//  Copyright © 2017年 zengtao. All rights reserved.
//

#import "UIButton+Direction.h"

@implementation UIButton (Direction)

-(void)applayDirection:(UIButtonDirection)direction imgTitleSpace:(CGFloat)margin
{
    //设置内容对齐模式，此内容对齐模式便于计算目标中心点
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentTop;
    self.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    
    //初始中心点
    CGPoint contentCenterP = CGPointMake(self.frame.size.width/2.0, self.frame.size.height/2.0);
    CGPoint imgOriginCenterP = self.imageView.center;
    CGPoint titleOriginCenterP = self.titleLabel.center;
    
    //控件大小
    CGSize contentSize = self.frame.size;
    CGSize imgSize = self.imageView.frame.size;
    CGSize titleSize = self.titleLabel.frame.size;
    
    //目标中心点
    CGPoint imgChangedCenterP = imgOriginCenterP;
    CGPoint titleChangedCenterP = titleOriginCenterP;
    
    CGFloat XSpace = (contentSize.width-imgSize.width-margin-titleSize.width)/2.0;
    CGFloat ySpace = (contentSize.height-imgSize.height-margin-titleSize.height)/2.0;
    
    switch (direction) {
        case UIButtonDirectionTop:
        {
            imgChangedCenterP = CGPointMake(contentCenterP.x, ySpace + imgSize.height/2.0);
            titleChangedCenterP = CGPointMake(contentCenterP.x, ySpace + imgSize.height + margin + titleSize.height/2.0);
        }
            break;
        case UIButtonDirectionLeft:
        {
            imgChangedCenterP = CGPointMake(XSpace + imgSize.width/2.0, contentCenterP.y);
            titleChangedCenterP = CGPointMake(XSpace + imgSize.width + margin + titleSize.width/2.0, contentCenterP.y);
        }
            break;
        case UIButtonDirectionBottom:
        {
            imgChangedCenterP = CGPointMake(contentCenterP.x, ySpace + titleSize.height + margin + imgSize.height/2.0);
            titleChangedCenterP = CGPointMake(contentCenterP.x, ySpace + titleSize.height/2.0);
        }
            break;
        case UIButtonDirectionRight:
        {
            imgChangedCenterP = CGPointMake(XSpace + titleSize.width + margin + imgSize.width/2.0, contentCenterP.y);
            titleChangedCenterP = CGPointMake(XSpace + titleSize.width/2.0, contentCenterP.y);
        }
            break;
            
        default:
            break;
    }
    
    //移动的位置
    self.imageEdgeInsets = UIEdgeInsetsMake(imgChangedCenterP.y - imgOriginCenterP.y, imgChangedCenterP.x-imgOriginCenterP.x, 0, 0);
    self.titleEdgeInsets = UIEdgeInsetsMake(titleChangedCenterP.y-titleOriginCenterP.y, titleChangedCenterP.x-titleOriginCenterP.x, 0, 0);
}

@end
