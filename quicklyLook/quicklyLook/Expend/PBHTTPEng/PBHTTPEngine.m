//
//  PBHTTPEngine.m
//  quicklyLook
//
//  Created by mac1 on 16/7/30.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import "PBHTTPEngine.h"
#import <AFNetworking.h>
@implementation PBHTTPEngine

+(void)requestFirstPageJsonWithBlock:(complate)complate
{
    
    NSString* urlStr = @"http://api.kuaikanmanhua.com/v1/daily/comic_lists/1469289600?since=0";
    
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (complate)
        {
            complate(nil,responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (complate)
        {
            complate(error,nil);
        }
        
        
    }];
    
}


+(void)requestSecondPageJsonWithBlock:(complate)complate
{
    NSString* urlStr = @"http://api.kuaikanmanhua.com/v1/daily/comic_lists/1469376000?since=0";
    
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (complate)
        {
            complate(nil,responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (complate)
        {
            complate(error,nil);
        }
        
    }];
        
}

+(void)requestThirdPageJsonWithBlock:(complate)complate
{
    
    NSString* urlStr = @"http://api.kuaikanmanhua.com/v1/daily/comic_lists/1469462400?since=0";
    
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (complate)
        {
            complate(nil,responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (complate)
        {
            complate(error,nil);
        }
        
    }];

}

+(void)requestFourthPageJsonWithBlock:(complate)complate
{
    
    NSString* urlStr = @"http://api.kuaikanmanhua.com/v1/daily/comic_lists/1469548800?since=0";
    
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (complate)
        {
            complate(nil,responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (complate)
        {
            complate(error,nil);
        }
        
    }];
    
}
+(void)requestFifthPageJsonWithBlock:(complate)complate
{
    
    NSString* urlStr = @"http://api.kuaikanmanhua.com/v1/daily/comic_lists/1469635200?since=0";
    
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (complate)
        {
            complate(nil,responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (complate)
        {
            complate(error,nil);
        }
        
    }];

}

+(void)requestSixthPageJsonWithBlock:(complate)complate
{
    
    NSString* urlStr = @"http://api.kuaikanmanhua.com/v1/daily/comic_lists/1469721600?since=0";
    
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (complate)
        {
            complate(nil,responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (complate)
        {
            complate(error,nil);
        }
        
    }];
    
}

+(void)requestSeventhPageJsonWithBlock:(complate)complate
{
    NSString* urlStr = @"http://api.kuaikanmanhua.com/v1/daily/comic_lists/0?since=0";
    
    AFHTTPSessionManager* manager = [AFHTTPSessionManager manager];
    
    [manager GET:urlStr parameters:nil progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (complate)
        {
            complate(nil,responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (complate)
        {
            complate(error,nil);
        }
        
    }];

}
@end
