//
//  ViewController.m
//  IOSUIDemo
//
//  Created by 汪永利 on 2017/4/20.
//  Copyright © 2017年 汪永利. All rights reserved.
//

#import "ViewController.h"
#import "MyButton.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    MyButton* button_4 = [[MyButton alloc]init];
    [button_4 setTitle:@"Button4" forState:UIControlStateNormal];
    [button_4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button_4 setImage:[UIImage imageNamed:@"button"] forState:UIControlStateNormal];
    button_4.backgroundColor = [UIColor greenColor];
    button_4.layer.cornerRadius = 10.0f;
    button_4.layer.masksToBounds = YES;
    [button_4 sizeToFit];
    button_4.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:button_4];
    
    NSLayoutConstraint* layout = [NSLayoutConstraint constraintWithItem:button_4 attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1 constant:50];
    [self.view addConstraint:layout];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
