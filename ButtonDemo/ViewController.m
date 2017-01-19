//
//  ViewController.m
//  ButtonDemo
//
//  Created by litao on 17/1/19.
//  Copyright © 2017年 zengtao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *downArrow = [UIImage imageNamed:@"icon_jiangjin"];
    UIButton *_arrowBtn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-320)/2.0, 64, 320, 100)];
    
    _arrowBtn.backgroundColor = [UIColor orangeColor];
    _arrowBtn.titleLabel.backgroundColor = [UIColor redColor];
    _arrowBtn.imageView.backgroundColor = [UIColor greenColor];
    
    [_arrowBtn setTitle:@"哈哈" forState:UIControlStateNormal];
    [_arrowBtn setImage:downArrow forState:UIControlStateNormal];
    
    [self topImage:_arrowBtn];
    
    [self.view addSubview:_arrowBtn];
    
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2.0, 0, 0.5, self.view.frame.size.height)];
    line.backgroundColor = [UIColor redColor];
    [self.view addSubview:line];
    
    UIView *line1 = [[UIView alloc] initWithFrame:CGRectMake(0, _arrowBtn.center.y, self.view.frame.size.width, 0.5)];
    line1.backgroundColor = [UIColor redColor];
    [self.view addSubview:line1];
    
}

-(void)topImage:(UIButton *)btn
{
    CGPoint contentCenterP = CGPointMake(btn.frame.size.width/2.0, btn.frame.size.height/2.0);
    CGPoint imgOriginCenterP = btn.imageView.center;
    CGPoint titleOriginCenterP = btn.titleLabel.center;
    
    CGSize contentSize = btn.frame.size;
    CGSize imgSize = btn.imageView.frame.size;
    CGSize titleSize = btn.titleLabel.frame.size;
    
    CGPoint imgChangedCenterP = CGPointMake(contentCenterP.x, (contentSize.height-titleSize.height-imgSize.height)/2.0+imgSize.height/2.0);
    CGPoint titleChangedCenterP = CGPointMake(contentCenterP.x, (contentSize.height-titleSize.height-imgSize.height)/2.0+imgSize.height+titleSize.height/2.0);
    
    btn.imageEdgeInsets = UIEdgeInsetsMake(-(imgOriginCenterP.y-imgChangedCenterP.y)*2, (imgChangedCenterP.x-imgOriginCenterP.x)*2, 0, 0);
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, -(titleChangedCenterP.y-titleOriginCenterP.y)*2, (titleOriginCenterP.x-titleChangedCenterP.x)*2);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
