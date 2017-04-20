//
//  MyButton.m
//  IOSUIDemo
//
//  Created by 汪永利 on 2017/4/19.
//  Copyright © 2017年 汪永利. All rights reserved.
//

#import "MyButton.h"

@implementation MyButton

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//-(instancetype)init{
//    self = [super init];
//    if (self) {
//        self.frame = CGRectMake(0, 200, 80, 80);
//        NSLayoutConstraint* layout = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:80];
//        [self addConstraint:layout];
//    }
//    return self;
//}

-(void)setTitle:(NSString *)title forState:(UIControlState)state{
    
    [super setTitle:title forState:state];
    
    [self sizeToFit];
}

-(void)setImage:(UIImage *)image forState:(UIControlState)state{
    [super setImage:image forState:state];
    

    [self sizeToFit];
}

-(void)layoutSubviews{
    [super layoutSubviews];
    NSLog(@"===========title x = %f",self.titleLabel.frame.origin.x);
    NSLog(@"===========title y = %f",self.titleLabel.frame.origin.y);
    NSLog(@"===========title width = %f",self.titleLabel.frame.size.width);
    NSLog(@"===========title height = %f",self.titleLabel.frame.size.height);
    if (self.titleH == 0) {
        self.titleX = self.titleLabel.frame.origin.x;
        self.titleY = self.titleLabel.frame.origin.y;
        self.titleW = self.titleLabel.frame.size.width;
        self.titleH = self.titleLabel.frame.size.height;
        
        self.imageW = self.imageView.frame.size.width;
        self.imageH = self.imageView.frame.size.height;
    }
    self.layer.bounds = CGRectMake(0, 0, self.titleW, self.titleH + self.imageH);
    self.titleLabel.frame = CGRectMake(0, self.imageH, self.titleW, self.titleH);
    self.imageView.center = CGPointMake(self.titleW / 2, self.imageH / 2);
//    if (self.imageView.frame.origin.x < self.titleLabel.frame.origin.x) {
//        self.titleLabel.frame = CGRectMake(self.imageView.frame.origin.x, self.titleLabel.frame.origin.y, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height);
//        self.imageView.frame = CGRectMake(self.titleLabel.frame.origin.x + self.titleLabel.frame.size.width, self.imageView.frame.origin.y, self.imageView.frame.size.width, self.imageView.frame.size.height);
//        
//    }
    
    self.titleLabel.frame = CGRectMake(0, self.imageView.frame.size.height, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height);
    self.imageView.center = CGPointMake(self.titleLabel.center.x, self.imageView.frame.size.height / 2);
//    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height + self.imageView.frame.size.height);
    
}

@end
