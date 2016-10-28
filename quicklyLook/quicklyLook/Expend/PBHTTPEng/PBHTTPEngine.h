//
//  PBHTTPEngine.h
//  quicklyLook
//
//  Created by mac1 on 16/7/30.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^complate)(NSError* error, id responseObject);

@interface PBHTTPEngine : NSObject

+(void)requestFirstPageJsonWithBlock:(complate)complate;

+(void)requestSecondPageJsonWithBlock:(complate)complate;

+(void)requestThirdPageJsonWithBlock:(complate)complate;

+(void)requestFourthPageJsonWithBlock:(complate)complate;

+(void)requestFifthPageJsonWithBlock:(complate)complate;

+(void)requestSixthPageJsonWithBlock:(complate)complate;

+(void)requestSeventhPageJsonWithBlock:(complate)complate;

@end
