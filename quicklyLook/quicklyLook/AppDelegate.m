//
//  AppDelegate.m
//  quicklyLook
//
//  Created by mac1 on 16/7/29.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import "AppDelegate.h"
#import "PBVernierViewController.h"
#import "PBHomeViewController.h"
#import "PBSearchViewController.h"
#import "PBMeViewController.h"
#import "PBVCommunityViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = [[UIViewController alloc]init];
    
//    PBHomeViewController* homeVC = [[PBHomeViewController alloc]init];
//    
//    _window.rootViewController = homeVC;
    
    [self createTabBar];
    
    
    [self.window makeKeyAndVisible];
    
    return YES;
}
-(NSArray* )obtainTime
{
    NSDate* dateNow = [NSDate date];
    
    NSDateFormatter* dateFormatter = [[NSDateFormatter alloc]init];
    
    [dateFormatter setDateFormat:@"星期e"];
    
    NSString* dateStr = [dateFormatter stringFromDate:dateNow];
    
    NSString* NowStr = [self componentsSeparatedByStringWithWeek:dateStr];
    
    NowStr = @"今天";
    
    NSDate* dateYest = [NSDate dateWithTimeInterval:-24*60*60 sinceDate:dateNow];
    
    NSString* dateYestDay = [dateFormatter stringFromDate:dateYest];
    
    NSString* YestStr = [self componentsSeparatedByStringWithWeek:dateYestDay];
    
    YestStr = @"昨天";
    
    NSDate* date1 = [NSDate dateWithTimeInterval:-24*2*60*60 sinceDate:dateNow];
    NSString* dateStr1= [dateFormatter stringFromDate:date1];
    
    NSString* firstDateStr = [self componentsSeparatedByStringWithWeek:dateStr1];
    
    NSDate* date2 = [NSDate dateWithTimeInterval:-24*3*60*60 sinceDate:dateNow];
    NSString* dateStr2= [dateFormatter stringFromDate:date2];
    
    NSString* secondDateStr = [self componentsSeparatedByStringWithWeek:dateStr2];
    
    NSDate* date3 = [NSDate dateWithTimeInterval:-24*4*60*60 sinceDate:dateNow];
    
    NSString* dateStr3= [dateFormatter stringFromDate:date3];
    
    NSString* ThirdDateStr = [self componentsSeparatedByStringWithWeek:dateStr3];
    
    NSDate* date4 = [NSDate dateWithTimeInterval:-24*5*60*60 sinceDate:dateNow];
    
    NSString* dateStr4= [dateFormatter stringFromDate:date4];
    
    NSString* fourthDateStr = [self componentsSeparatedByStringWithWeek:dateStr4];
    
    NSDate* date5 = [NSDate dateWithTimeInterval:-24*6*60*60 sinceDate:dateNow];
    
    NSString* dateStr5= [dateFormatter stringFromDate:date5];
    
    NSString* fifthDateStr = [self componentsSeparatedByStringWithWeek:dateStr5];
    
    NSArray* dateArr = @[fifthDateStr,fourthDateStr,ThirdDateStr,secondDateStr,firstDateStr,YestStr,NowStr];
    
    return dateArr;
    
    
}
-(NSString* )componentsSeparatedByStringWithWeek:(NSString* )week
{
    
    NSString*weekStr=nil;
    if([week isEqualToString:@"星期1"])
    {
        weekStr=@"周日";
    }else if([week isEqualToString:@"星期2"]){
        weekStr=@"周一";
        
    }else if([week isEqualToString:@"星期3"]){
        weekStr=@"周二";
        
    }else if([week isEqualToString:@"星期4"]){
        weekStr=@"周三";
        
    }else if([week isEqualToString:@"星期5"]){
        weekStr=@"周四";
        
    }else if([week isEqualToString:@"星期6"]){
        weekStr=@"周五";
        
    }else if([week isEqualToString:@"星期7"]){
        weekStr=@"周六";
        
    }
    return weekStr;
    
}


-(void)createTabBar
{
    UITabBarController* tabbarController = [[UITabBarController alloc]init];
    
    NSArray* nameArr = [self obtainTime];
    
    PBVernierViewController* vernierVC = [[PBVernierViewController alloc]initWithFromArr:nameArr];
    
    UINavigationController* vernierNav = [[UINavigationController alloc]initWithRootViewController:vernierVC];
    
    vernierNav.tabBarItem.image = [UIImage imageNamed:@"ic_tabbar_home_normal"];
    vernierNav.tabBarItem.title = @"漫画";
    
    vernierNav.tabBarItem.selectedImage = [UIImage imageNamed:@"ic_tabbar_home_pressed"];
    
    PBSearchViewController* searchVC = [[PBSearchViewController alloc]init];
    
    UINavigationController* searchNav = [[UINavigationController alloc]initWithRootViewController:searchVC];
    
    searchNav.tabBarItem.image = [UIImage imageNamed:@"ic_tabbar_discover_normal"];
    
    searchNav.tabBarItem.selectedImage = [UIImage imageNamed:@"ic_tabbar_discover_pressed"];
    searchNav.tabBarItem.title = @"发现";
    
    PBVCommunityViewController* vCommunityVC = [[PBVCommunityViewController alloc]init];
    
    UINavigationController* vCommunityNav = [[UINavigationController alloc]initWithRootViewController:vCommunityVC];
    
    vCommunityNav.tabBarItem.image = [UIImage imageNamed:@"ic_tabbar_media_normal"];
    
    vCommunityNav.tabBarItem.selectedImage = [UIImage imageNamed:@"ic_tabbar_media_pressed"];
    
    vCommunityNav.tabBarItem.title = @"v社区";
    
    PBMeViewController* meVC = [[PBMeViewController alloc]init];
    
    meVC.tabBarItem.image = [UIImage imageNamed:@"ic_tabbar_me_normal"];
    
    meVC.tabBarItem.selectedImage = [UIImage imageNamed:@"ic_tabbar_me_pressed"];
    
    meVC.tabBarItem.title = @"我的";
    
    tabbarController.viewControllers = @[vernierNav,searchNav,vCommunityNav,meVC];
    
    tabbarController.tabBar.tintColor = [UIColor blackColor];
    
    tabbarController.tabBar.barTintColor = [UIColor whiteColor];
    
    _window.rootViewController = tabbarController;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
