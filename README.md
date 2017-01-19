# DirectionButton
设置button中图片和文字的相对位置
## 效果图
1. top样式
![top](https://github.com/jinghailang/DirectionButton/blob/master/ButtonDemo/ReadmeImage/top%402x.png)
2. left样式
![top](https://github.com/jinghailang/DirectionButton/blob/master/ButtonDemo/ReadmeImage/left%402x.png)
3. bottom样式
![top](https://github.com/jinghailang/DirectionButton/blob/master/ButtonDemo/ReadmeImage/bottom%402x.png)
4. right样式
![top](https://github.com/jinghailang/DirectionButton/blob/master/ButtonDemo/ReadmeImage/right%402x.png)

## 使用
  
    UIImage *downArrow = [UIImage imageNamed:@"icon_jiangjin"];
    UIButton *_arrowBtn = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-320)/2.0, 64, 320, 100)];
    
    _arrowBtn.backgroundColor = [UIColor orangeColor];
    _arrowBtn.titleLabel.backgroundColor = [UIColor redColor];
    _arrowBtn.imageView.backgroundColor = [UIColor greenColor];
    
    [_arrowBtn setTitle:@"哈哈" forState:UIControlStateNormal];
    [_arrowBtn setImage:downArrow forState:UIControlStateNormal];
    
    //图片在文字上面的样式
    [_arrowBtn applayDirection:UIButtonDirectionTop imgTitleSpace:5];
