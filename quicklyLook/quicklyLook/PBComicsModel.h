//
//  PBComicsModel.h
//  quicklyLook
//
//  Created by mac1 on 16/8/1.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface PBComicsModel : NSObject

@property(nonatomic,strong)NSString* url;

@property(nonatomic,strong)NSString* label_text_color;

@property(nonatomic,strong)NSString* label_color;

@property(nonatomic,strong)NSString* label_text;

@property(nonatomic,strong)NSString* title;

@property(nonatomic,strong)NSString* cover_image_url;

@property(nonatomic,strong)NSString* topicTitle;

//@property(nonatomic,strong)NSArray<PBUserModel* >* user;

@property(nonatomic,strong)NSString* userNickname;

@property(nonatomic,strong)NSNumber* userNomments_count;

@property(nonatomic,strong)NSNumber* userLikes_count;


@end
