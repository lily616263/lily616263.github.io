//
//  PBHomeViewController.h
//  quicklyLook
//
//  Created by mac1 on 16/7/29.
//  Copyright © 2016年 mac1. All rights reserved.
//
#import <UIKit/UIKit.h>

//@protocol PBHomeViewControllerDelegate;

@interface PBHomeViewController : UIViewController

//@property(nonatomic)NSInteger controllersIndex;

@property(nonatomic,strong)UIView* leftView;

@property(nonatomic,strong)UIView* rightView;

//@property(nonatomic,weak)id <PBHomeViewControllerDelegate> delegate;

@end

//@protocol PBHomeViewControllerDelegate <NSObject>
//
//-(NSArray* )passOnWeekArry;
//
//@end