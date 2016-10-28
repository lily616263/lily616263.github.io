//
//  PBVernierViewController.h
//  穿搭志
//
//  Created by mac1 on 16/7/11.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PBVernierViewController : UIViewController

-(instancetype)initWithFromArr:(NSArray* )array;


@property(nonatomic)NSInteger controllersIndex;


//创建的大ScrollowView的实例变量
@property(nonatomic,strong)UIScrollView* myScrollowView;


//装着Controllers的数组
@property(nonatomic,strong)NSArray* ControllersArray;


//承载btn的小scrollowView的实例变量
@property(nonatomic,strong)UIScrollView* btnScrollowView;

//记录scrollowView的偏移量
@property(nonatomic)CGFloat cx;


@property(nonatomic)NSInteger selectedIndex;
@end
