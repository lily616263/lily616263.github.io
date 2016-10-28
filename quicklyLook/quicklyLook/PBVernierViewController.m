//
//  PBVernierViewController.m
//  穿搭志
//
//  Created by mac1 on 16/7/11.
//  Copyright © 2016年 mac1. All rights reserved.
//
#define SCREEN_WIDTH   [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT  [UIScreen mainScreen].bounds.size.height
#import "PBVernierViewController.h"
#import "PBHomeViewController.h"
#import "AttentionViewManager.h"
#import "PBHTTPEngine.h"
#import <AFNetworking.h>
#import <UIImageView+WebCache.h>
#import "PBComicsModel.h"
@interface PBVernierViewController ()<UIScrollViewDelegate>{
    
    NSMutableArray* _leftBtnArr;
    
    NSMutableArray* _rightBtnArr;
    
    NSMutableArray* _modelArr;

    
    
}

@end

@implementation PBVernierViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _cx = 0;
    
    [self createNavBtn];
    
    [self leftFace];
   
    [self requestJsonAndAnalysisJson];
    
}
-(void)requestJsonAndAnalysisJson
{
    
    switch (self.controllersIndex)
    {
        case 0:
            
        {
            [PBHTTPEngine requestFirstPageJsonWithBlock:^(NSError *error, id responseObject) {
                if (error)
                {
                    NSLog(@"error == %@",error);
                }else
                {
                    
                                        NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                    
                                        NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                    
                                        NSLog(@"jsonStr == %@",jsonDicStr);
                    
                    NSDictionary* dataDic = responseObject[@"data"];
                    
                    NSArray* comicsArr = dataDic[@"comics"];
                    
                    NSLog(@"haha");
                    
                    [comicsArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                        
                        
                        PBComicsModel* model = [[PBComicsModel alloc]init];
                        
                        model.title = obj[@"title"];
                        
                        model.cover_image_url = obj[@"cover_image_url"];
                        
                        model.label_color = obj[@"label_color"];
                        
                        model.label_text = obj[@"label_text"];
                        
                        model.label_text_color = obj[@"label_text_color"];
                        
                        NSDictionary* topicDic = obj[@"topic"];
                        
                        model.topicTitle = topicDic[@"title"];
                        
                        NSDictionary* userDic = obj[@"user"];
                        
                        model.userNickname = userDic[@"nickname"];
                        
                        model.userNomments_count = userDic[@"nomments_count"];
                        
                        model.userLikes_count = userDic[@"likes_count"];
                        
                        [_modelArr addObject:model];
                        
                        
                        [self performSelectorOnMainThread:@selector(tableViewReload) withObject:nil waitUntilDone:YES];
                        
                    }];

                    
                    
                    
                }
                
            }];
            
        }
            break;
            
        case 1:
        {
            //            [NSThread sleepForTimeInterval:0.15];
            
            
            [PBHTTPEngine requestSecondPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                if (error)
                {
                    NSLog(@"error == %@",error);
                }else
                {
                    
                    
                    //                    NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                    //
                    //                    NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                    //
                    //                    NSLog(@"jsonStr == %@",jsonDicStr);
                    
                    
                    
                }
            }];
            
        }
            break;
            
        case 2:
        {
            //            [NSThread sleepForTimeInterval:0.3];
            [PBHTTPEngine requestThirdPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                
                
                
            }];
            
        }
            break;
        case 3:
        {
            //            [NSThread sleepForTimeInterval:0.45];
            [PBHTTPEngine requestFourthPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                
                
                
            }];
        }
            break;
        case 4:
        {
            //            [NSThread sleepForTimeInterval:0.6];
            [PBHTTPEngine requestFifthPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                
                
            }];
        }
            break;
        case 5:
        {
            //            [NSThread sleepForTimeInterval:0.75];
            
            [PBHTTPEngine requestSixthPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                
            }];
            
        }
            break;
        case 6:
        {
            
            [PBHTTPEngine requestSeventhPageJsonWithBlock:^(NSError *error, id responseObject) {
                
//                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
//                
//                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
//                
//                NSLog(@"jsonStr == %@",jsonDicStr);
                
                
                NSDictionary* dataDic = responseObject[@"data"];
                
                NSArray* comicsArr = dataDic[@"comics"];
                
                [comicsArr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                    
                    
                    PBComicsModel* model = [[PBComicsModel alloc]init];
                    
                    model.title = obj[@"title"];
                    
                    model.cover_image_url = obj[@"cover_image_url"];
                    
                    model.label_color = obj[@"label_color"];
                    
                    model.label_text = obj[@"label_text"];
                    
                    model.label_text_color = obj[@"label_text_color"];
                    
                    NSDictionary* topicDic = obj[@"topic"];
                    
                    model.topicTitle = topicDic[@"title"];
                    
                    NSDictionary* userDic = obj[@"user"];
                    
                    model.userNickname = userDic[@"nickname"];
                    
                    model.userNomments_count = userDic[@"nomments_count"];
                    
                    model.userLikes_count = userDic[@"likes_count"];
                    
                    [_modelArr addObject:model];
                    
                    
                    [self performSelectorOnMainThread:@selector(tableViewReload) withObject:nil waitUntilDone:YES];
                    
                }];
                
                
            }];
        }
            break;
            
        default:
            break;
    }
    
}

-(void)tableViewReload
{
    
}

-(void)leftFace
{
    
    AttentionViewManager * managerView = [AttentionViewManager shareManager];
    
    UIView* view = [[UIView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    
    view.backgroundColor = [UIColor colorWithRed:214.0f/225.0f green:214.0f/225.0f blue:214.0f/225.0f alpha:1];
    
    
    CGFloat width = (self.view.frame.size.width - 165/2)/2;
    
    UIImageView* imageView = [[UIImageView alloc]initWithFrame:CGRectMake(width, 99, 165/2, 210/2)];
    
    UILabel * label = [[UILabel alloc]initWithFrame:CGRectMake(0, 215, self.view.frame.size.width, 20)];
    
    label.backgroundColor = [UIColor colorWithRed:214.0f/225.0f green:214.0f/225.0f blue:214.0f/225.0f alpha:1];
    
    label.textColor = [UIColor colorWithRed:179.0f/225.0f green:179.0f/225.0f blue:179.0f/225.0f alpha:1];
    
    label.text = @"没登录，超多精彩内容看不鸟";
    
    label.textAlignment = NSTextAlignmentCenter;
    
    label.font = [UIFont systemFontOfSize:14.0f];
    
    width = (self.view.frame.size.width - 120)/2;
    
    UIButton* button = [UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame = CGRectMake(width, 275, 120, 40);
    
    [button setBackgroundImage:[UIImage imageNamed:@"ic_cache_push_ok_normal"] forState:UIControlStateNormal];
    [button setTitle:@"立即登录" forState: UIControlStateNormal];
    
    imageView.image = [UIImage imageNamed:@"ic_search_empty"];
    
    [view addSubview:imageView];
    
    [view addSubview:label];
    
    [view addSubview:button];
    
    [managerView addSubview:view];
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
        
        if (btn.tag == 12)
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
    
    AttentionViewManager * manager = [AttentionViewManager shareManager];

    
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
            
            CGRect frame = _myScrollowView.frame;
            
            frame.origin.x = 0;
            
            _myScrollowView.frame = frame;
            
            
            CGRect frame1 = _btnScrollowView.frame;
            
            frame1.origin.x = 0;
            
            _btnScrollowView.frame = frame1;
        }];
        
        [UIView animateWithDuration:0.35 animations:^{
            
            CGRect frame = manager.frame;
            
            frame.origin.x = -self.view.frame.size.width;
            
            manager.frame = frame;
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
            
            CGRect frame = _myScrollowView.frame;
            
            frame.origin.x = self.view.frame.size.width;
            
            _myScrollowView.frame = frame;
            
            CGRect frame1 = _btnScrollowView.frame;
            
            frame1.origin.x = self.view.frame.size.width;
            
            _btnScrollowView.frame = frame1;
        }];
        
        

        
        [UIView animateWithDuration:0.35 animations:^{
            
            CGRect frame =manager.frame;
            
            frame.origin.x = 0;
            
            manager.frame = frame;
        }];
        
        //        _currentBtnTag = sender.tag;
        
        
    }
    
    //    sender.selected = !sender.selected;
    
}

#pragma mark ---------- 创建大scrollowView的方法
#pragma mark ---------- 重写init方法
-(instancetype)initWithFromArr:(NSArray* )array
{
    self = [super init];
    
    if (self)
    {
        
        
        
        //关闭优化机制
        self.automaticallyAdjustsScrollViewInsets = NO;
        //将初始化传过来的arr赋值给实例变量 ControllersArray
        self.ControllersArray = array;
        //创建承载btn的scrollowView
        [self createBtnScrollowViewWithArray:array];
        
        //创建承载controllers的scrollowView
        _myScrollowView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 94, SCREEN_WIDTH, SCREEN_HEIGHT-94)];
        
        _myScrollowView.bounces = NO;
        
        _myScrollowView.pagingEnabled = YES;
        
        _myScrollowView.backgroundColor = [UIColor darkGrayColor];
        
        _myScrollowView.delegate = self;
        
        [self.view addSubview:_myScrollowView];
        
        _myScrollowView.contentSize = CGSizeMake(_ControllersArray.count*SCREEN_WIDTH, SCREEN_HEIGHT-94);
        
//        UIView* moveView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
//        
//        moveView.backgroundColor = [UIColor cyanColor];
//        
//        [self.view addSubview:moveView];

        
//        _myScrollowView.contentOffset = CGPointMake(SCREEN_HEIGHT * array.count  , 0);
        
        
        
        for (int i = 0; i<array.count; i++)
        {
            
            
//            PBHomeViewController* homeVC = [[PBHomeViewController alloc]init];
            
            PBVernierViewController* homeVC = [[PBVernierViewController alloc]init];
            
            homeVC.controllersIndex = i;
            
            NSLog(@"%ld",homeVC.controllersIndex);
            
            homeVC.view.frame = CGRectMake(SCREEN_WIDTH * i, 0, SCREEN_WIDTH, _myScrollowView.frame.size.height);
            
            homeVC.view.backgroundColor = [UIColor colorWithHue:(arc4random()%256/256.0) saturation:(arc4random()%128/256.0)+0.5 brightness:(arc4random()%128)+0.5 alpha:1];
            
//            homeVC.view.backgroundColor = [UIColor whiteColor];
            
             AttentionViewManager* managerView = [AttentionViewManager shareManager];
            
            managerView.frame = CGRectMake(-self.view.frame.size.width, 0, self.view.frame.size.width, self.view.frame.size.height);
            
            managerView.backgroundColor = [UIColor whiteColor];
            
            [self.view addSubview:managerView];
            
            
            [_myScrollowView addSubview:homeVC.view];
            
            [self addChildViewController:homeVC];
            
        }
        
    
        
    }
    
    return self;
    
}
#pragma mark ---------- 创建btn 并计算scrollowView的contentSize
-(void)createBtnScrollowViewWithArray:(NSArray*)array
{
    _btnScrollowView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 30)];
    
//    _btnScrollowView.backgroundColor =[UIColor orangeColor];
    
    _btnScrollowView.showsHorizontalScrollIndicator = NO;
    
    _btnScrollowView.tag = 222;
    
    [self.view addSubview:_btnScrollowView];
    
    CGFloat space = 20;
    
    CGFloat widthContentSize = 0;
    
    for (int i = 0; i<array.count; i++)
    {
        NSString* controllerName = _ControllersArray[i];
        
        NSInteger length = [controllerName length];
        
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
//        btn.backgroundColor = [UIColor cyanColor];
        
        btn.frame = CGRectMake(space+widthContentSize, 5, 14 * length + 10, 20);
        
         btn.tag = i+666;
        
        [btn setTitle:controllerName forState:UIControlStateNormal];
        
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
//        btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        
        [btn setTitleColor:[UIColor colorWithRed:245.0f/225.0f green:186.0f/225.0f blue:24.0f/225.0f alpha:1] forState:UIControlStateSelected];
        
        
        [btn setTitle:controllerName forState:UIControlStateNormal];
        
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        
        [_btnScrollowView addSubview:btn];
        
        UIView* vernierView = [[UIView alloc]initWithFrame:CGRectMake(space+widthContentSize, 27,14 * length + 10, 2)];
        
        vernierView.backgroundColor = [UIColor colorWithRed:245.0f/225.0f green:186.0f/225.0f blue:24.0f/225.0f alpha:1];
        
        vernierView.tag = i + 9 ;
        
        [_btnScrollowView addSubview:vernierView];
        
        
        if (i == 0)
        {
            btn.selected = YES;
            
            vernierView.hidden = NO;
        }else
        {
//            btn.selected = NO;
            
            vernierView.hidden = YES;
            
        }
        
        widthContentSize = 14 * length + 10 + space + widthContentSize;
        
        [btn addTarget:self action:@selector(scrollowViewIndexScrollowViewAndController:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    _btnScrollowView.contentSize = CGSizeMake(widthContentSize , 30);
    
}
#pragma mark ---------- 建立btn和vernierView的联系
-(void)scrollowViewIndexScrollowViewAndController:(UIButton* )btn
{
    for (int i = 0; i<_ControllersArray.count; i++)
    {
        
        UIButton* btn = (UIButton*)[self.view viewWithTag:i+666];
        
        UIView* vernierView = (UIView*)[self.view viewWithTag:i + 9];
        
        btn.selected = NO;
        
        vernierView.hidden = YES;
    }
    //记录当前选中的btn的tag值
    NSInteger index = btn.tag-666;
    
    _selectedIndex = index;
    
    btn.selected = YES;
    
    UIView* view = (UIView* )[self.view viewWithTag:index + 9];
    
    view.hidden = NO;
    
    _myScrollowView.contentOffset =CGPointMake(SCREEN_WIDTH * index , 0);
    
}
#pragma mark ----------  scrollowView的代理方法
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    NSInteger index = scrollView.contentOffset.x/SCREEN_WIDTH;
    
    for (int i = 0; i < _ControllersArray.count; i++)
    {
        UIButton* btn = (UIButton* )[self.view viewWithTag:i+666];
        
        UIView* vernierView = (UIView* )[self.view viewWithTag:i + 9];
        
        if (index == i)
        {
            btn.selected = YES;
            
            vernierView.hidden = NO;
        }else
        {
            btn.selected = NO;
            
            vernierView.hidden = YES;
        }
    }
    
    UIButton* button = (UIButton*)[self.view viewWithTag:index + 666];
    
    CGFloat width = 0;
    
    if (scrollView.contentOffset.x > _cx)
    {
        //说明向左滑动
        if (index > _selectedIndex)
        {
            if (index != _selectedIndex)
            {
                if (button.frame.origin.x + button.bounds.size.width + 10 > SCREEN_WIDTH)
                {
                    
                    width = button.frame.origin.x + button.frame.size.width+20-SCREEN_WIDTH;
                    
                    [UIView animateWithDuration:0.3 animations:^{
                        
                        
                        _btnScrollowView.contentOffset = CGPointMake(width, 0);
                        
                    }];
                    
                }else
                {
                    width = 0;
                }
            }
        }
        
        
    }else if (scrollView.contentOffset.x != _cx)
    {
        if ((button.frame.origin.x + button.frame.size.width + 6)>SCREEN_WIDTH)
        {
            [UIView animateWithDuration:0.3 animations:^{
                
                _btnScrollowView.contentOffset = CGPointMake(button.frame.origin.x + button.frame.size.width + 20 - SCREEN_WIDTH, 0);
            }];
        }else
        {
            
            [UIView animateWithDuration:0.3 animations:^{
                _btnScrollowView.contentOffset = CGPointMake(0, 0);
            }];
            
        }
        
        
    }
    
    _cx = scrollView.contentOffset.x;
    
    _selectedIndex = index;
    
}

@end
