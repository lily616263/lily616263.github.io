//
//  PBSearchViewController.m
//  quicklyLook
//
//  Created by mac1 on 16/7/29.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import "PBSearchViewController.h"

@interface PBSearchViewController (){
    
    NSMutableArray* _leftBtnArr;
    
    NSMutableArray* _rightBtnArr;
    
    UIView* _leftView;
    
    UIView* _rightView;
    
    NSInteger _currentBtnTag;
    
}



@end

@implementation PBSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self createNavBtn];
    
   
    _leftView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
    _leftView.backgroundColor = [UIColor yellowColor];
    
    [self.view addSubview:_leftView];
    
    _rightView = [[UIView alloc]initWithFrame:CGRectMake(self.view.frame.size.width,0, self.view.frame.size.width, self.view.frame.size.height)];
    
    _rightView.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:_rightView];
    
    
    
}
-(void)createNavBtn
{
    _leftBtnArr = [[NSMutableArray alloc]initWithCapacity:1];
    
    _rightBtnArr = [[NSMutableArray alloc]initWithCapacity:1];
    
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake((self.view.frame.size.width - 100)/2, 0, 100, 30)];
    
    NSArray* arr = @[@"推荐",@"分类"];
    
    for (int i = 0; i<2; i++)
    {
        
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        btn.frame = CGRectMake(50*(i%2), 0, 50, 30);
        
        btn.tag = i + 11;
        
//        _currentBtnTag = 11;
        
        if (btn.tag == 11)
        {
            btn.selected = YES;
        }
        
        switch (i) {
            case 0:
            {
                
                [btn setBackgroundImage:[UIImage imageNamed:@"ic_common_nav_recommend_normal"] forState:UIControlStateNormal];
                
                [btn setBackgroundImage:[UIImage imageNamed:@"ic_common_nav_recommend_highlighted"] forState:UIControlStateSelected];
                
            }
                break;
            case 1:
            {
                
                [btn setBackgroundImage:[UIImage imageNamed:@"ic_common_nav_fine_normal"] forState:UIControlStateNormal];
                
                [btn setBackgroundImage:[UIImage imageNamed:@"ic_common_nav_fine_highlighted"] forState:UIControlStateSelected];
                
            }
                break;
            default:
                break;
        }
        
        [btn setTitle:arr[i] forState:UIControlStateNormal];
        
        [btn setTitle:arr[i] forState:UIControlStateSelected];
        
        [btn setTitleColor:[UIColor colorWithRed:247/225.0f green:218/225.0f blue:0/225.0f alpha:1.0] forState:UIControlStateNormal];
        
        [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
        
        [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        [view addSubview:btn];
        
        if (btn.tag == 11)
        {
            [_leftBtnArr addObject:btn];
        }else if (btn.tag == 12)
        {
            [_rightBtnArr addObject:btn];
        }
        
    }
    
    self.navigationItem.titleView = view;

}
-(void)buttonClick:(UIButton* )sender
{
    
    if (sender.tag == 12)
    {
        
        for (UIButton* rightButton in _rightBtnArr)
        {
            
            rightButton.selected = YES;

        }
        
        for (UIButton* leftButton in _leftBtnArr)
        {
            leftButton.selected = NO;
        }
       
        [UIView animateWithDuration:0.35 animations:^{
            
            CGRect frame = _leftView.frame;
            
            frame.origin.x = -self.view.frame.size.width;
            
            _leftView.frame = frame;
        }];
        
        [UIView animateWithDuration:0.35 animations:^{
            
            CGRect frame = _rightView.frame;
            
            frame.origin.x = 0;
            
            _rightView.frame = frame;
        }];
        
        
//        _currentBtnTag = sender.tag;
        
    }else if(sender.tag == 11)
    {
        
        for (UIButton* leftButton in _leftBtnArr)
        {
            leftButton.selected = YES;
        }
        
        for (UIButton* rightButton in _rightBtnArr)
        {
            rightButton.selected = NO;
        }
        
        
        [UIView animateWithDuration:0.35 animations:^{
            
            CGRect frame = _leftView.frame;
            
            frame.origin.x = 0;
            
            _leftView.frame = frame;
        }];
        
        [UIView animateWithDuration:0.35 animations:^{
            
            CGRect frame = _rightView.frame;
            
            frame.origin.x = self.view.frame.size.width;
            
            _rightView.frame = frame;
        }];
        
//        _currentBtnTag = sender.tag;

        
    }
    
//    sender.selected = !sender.selected;
    
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
