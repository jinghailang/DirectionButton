//
//  ViewController.m
//  ButtonDemo
//
//  Created by litao on 17/1/19.
//  Copyright © 2017年 zengtao. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Direction.h"

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
    
    //图片在文字上面的样式
    [_arrowBtn applayDirection:UIButtonDirectionTop imgTitleSpace:5];
    /*
    //图片在文字左边的样式
    [_arrowBtn applayDirection:UIButtonDirectionLeft imgTitleSpace:0];
    //图片在文字下面的样式
    [_arrowBtn applayDirection:UIButtonDirectionBottom imgTitleSpace:0];
    //图片在文字右边的样式
    [_arrowBtn applayDirection:UIButtonDirectionRight imgTitleSpace:0];
    */
    [self.view addSubview:_arrowBtn];
    
    //辅助线
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2.0, 0, 0.5, self.view.frame.size.height)];
    line.backgroundColor = [UIColor redColor];
    [self.view addSubview:line];
    
    UIView *line1 = [[UIView alloc] initWithFrame:CGRectMake(0, _arrowBtn.center.y, self.view.frame.size.width, 0.5)];
    line1.backgroundColor = [UIColor redColor];
    [self.view addSubview:line1];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
