//
//  ViewController.m
//  IOSUIDemo
//
//  Created by 汪永利 on 2017/4/18.
//  Copyright © 2017年 汪永利. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton* button_1 = [[UIButton alloc]init];
    [button_1 setTitle:@"Button1" forState:UIControlStateNormal];
    button_1.backgroundColor = [UIColor redColor];
    [button_1 sizeToFit];
//    自动布局是子view的translatesAutoresizingMaskIntoConstraints属性必须设置为NO，不然自动布局不生效
    button_1.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button_1];
    NSLayoutConstraint* buttonLayout = [NSLayoutConstraint constraintWithItem:button_1 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:50.0f];
    [self.view addConstraint:buttonLayout];
    buttonLayout = [NSLayoutConstraint constraintWithItem:button_1 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0f constant:30.0f];
    [self.view addConstraint:buttonLayout];
    
    UIButton* button_2 = [[UIButton alloc]init];
    [button_2 setTitle:@"Button2" forState:UIControlStateNormal];
    [button_2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button_2 setImage:[UIImage imageNamed:@"button"] forState:UIControlStateNormal];
//    设置button的大小为：wrap content
    [button_2 sizeToFit];
    button_2.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button_2];
    buttonLayout = [NSLayoutConstraint constraintWithItem:button_2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:50.0f];
    [self.view addConstraint:buttonLayout];
/*
 1、NSLayoutAttributeLeading必须与NSLayoutAttributeTrailing搭配，不能与NSLayoutAttributeRight搭配
 2、默认情况，button的title在右侧，image在左侧
 */
    buttonLayout = [NSLayoutConstraint constraintWithItem:button_2 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:button_1 attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:20.0f];
    [self.view addConstraint:buttonLayout];

    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
