//
//  ViewController.m
//  IOSUIDemo
//
//  Created by 汪永利 on 2017/4/18.
//  Copyright © 2017年 汪永利. All rights reserved.
//

#import "ButtonViewController.h"


@implementation ButtonViewController

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
    button_2.layer.cornerRadius = 10.0f;
    button_2.layer.borderWidth = 1;
    button_2.layer.borderColor = [UIColor redColor].CGColor;
//    shadowOffset阴影与原图在横向和纵向上的偏移距离
    button_2.layer.shadowOffset = CGSizeMake(10.0f, 5.0f);
    button_2.layer.shadowColor = [UIColor grayColor].CGColor;
//    shadowOpacity不透明度
    button_2.layer.shadowOpacity = 0.8f;
//    shadowRadius的值越大，阴影越模糊
    button_2.layer.shadowRadius = 5.0f;
    button_2.layer.masksToBounds = YES;
    
    buttonLayout = [NSLayoutConstraint constraintWithItem:button_2 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:50.0f];
    [self.view addConstraint:buttonLayout];
    

/*
 1、NSLayoutAttributeLeading必须与NSLayoutAttributeTrailing搭配，不能与NSLayoutAttributeRight搭配
 2、默认情况，button的title在右侧，image在左侧
 3、必须先调用addSubView，再调用addConstraint
 */
    buttonLayout = [NSLayoutConstraint constraintWithItem:button_2 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:button_1 attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:20.0f];
    [self.view addConstraint:buttonLayout];

    
    UIButton* button_3 = [[UIButton alloc]init];
//    [button_3 setTitle:@"Button3" forState:UIControlStateNormal];
    [button_3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button_3 setBackgroundImage:[UIImage imageNamed:@"button"] forState:UIControlStateNormal];
    //    设置button的大小为：wrap content
    [button_3 sizeToFit];
    button_3.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button_3];
    
    [button_3 addTarget:self action:@selector(onClicked:) forControlEvents:UIControlEventTouchUpInside];
    button_3.layer.cornerRadius = 20.0f;
    button_3.layer.masksToBounds = YES;
    
//    button_3.titleEdgeInsets = UIEdgeInsetsMake(0.0f, 5.0f, 0.0f, 5.0f);
    

    buttonLayout = [NSLayoutConstraint constraintWithItem:button_3 attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:button_2 attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:20.0f];
    [self.view addConstraint:buttonLayout];
    buttonLayout = [NSLayoutConstraint constraintWithItem:button_3 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0f constant:50.0f];
    [self.view addConstraint:buttonLayout];
    
}

-(void)onClicked:(id)sender{
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"Action" message:@"button is pressed" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction* cancel = [UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancel];
    [self presentViewController:alertController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
