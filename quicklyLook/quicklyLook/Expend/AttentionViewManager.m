//
//  AttentionViewManager.m
//  quicklyLook
//
//  Created by mac1 on 16/7/30.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import "AttentionViewManager.h"

@implementation AttentionViewManager

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
+(instancetype)shareManager
{
    static AttentionViewManager * manager = nil;
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        manager = [[AttentionViewManager alloc]init];
        
    });
    
    return manager;
}
@end
