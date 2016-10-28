//
//  PBHomeViewController.m
//  quicklyLook
//
//  Created by mac1 on 16/7/29.
//  Copyright © 2016年 mac1. All rights reserved.
//

#import "PBHomeViewController.h"
#import "PBHTTPEngine.h"
@interface PBHomeViewController (){
    
    
    NSMutableArray* _dataArr;
    
    NSMutableArray* _rightBtnArr;
    
   }

@end

@implementation PBHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    _dataArr = [NSMutableArray alloc];
    
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        
        [self requestJson];
        
    });
    
    
}
-(void)requestJson
{
 
    
            [PBHTTPEngine requestFirstPageJsonWithBlock:^(NSError *error, id responseObject) {
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
                    
                    
                    NSDictionary* dataDic = responseObject[@"data"];
                    NSString* since = dataDic[@"since"];
                    
                    NSString* dataStr = [self changeTimestampToDataStrWithTimestamp:since];
                    
//                    NSString* string = [self componentsSeparatedByStringWithWeek:dataStr];
//                    
//                    [_dataArr addObject:string];
                    
                    NSLog(@"1%@",dataStr);
                    
                 
                    
                    
                    
                }
                
            }];
            
    
            [NSThread sleepForTimeInterval:0.15];
    
            
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
                    
                    NSDictionary* dataDic = responseObject[@"data"];
                    
                    NSString* since = dataDic[@"since"];
                    
                    NSString* dataStr = [self changeTimestampToDataStrWithTimestamp:since];
                    
//                    NSString* string = [self componentsSeparatedByStringWithWeek:dataStr];
//                    
//                    [_dataArr addObject:string];
                    NSLog(@"2%@",dataStr);
                    
                }
                    
                
            }];
            
        
          
            
      
            [NSThread sleepForTimeInterval:0.3];
            [PBHTTPEngine requestThirdPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                NSDictionary* dataDic = responseObject[@"data"];
                
                NSString* since = dataDic[@"since"];
                
                NSString* dataStr = [self changeTimestampToDataStrWithTimestamp:since];
//                
//                NSString* string = [self componentsSeparatedByStringWithWeek:dataStr];
//                
//                [_dataArr addObject:string];
                NSLog(@"3%@",dataStr);
                
                
                
            }];
            
        
            
        
            [NSThread sleepForTimeInterval:0.45];
            [PBHTTPEngine requestFourthPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                NSDictionary* dataDic = responseObject[@"data"];
                
                NSString* since = dataDic[@"since"];
                
                NSString* dataStr = [self changeTimestampToDataStrWithTimestamp:since];
                
//                NSString* string = [self componentsSeparatedByStringWithWeek:dataStr];
                
//                [_dataArr addObject:string];
                NSLog(@"4%@",dataStr);
                
                
                
            }];
       
           
        
            [NSThread sleepForTimeInterval:0.6];
            [PBHTTPEngine requestFifthPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                NSDictionary* dataDic = responseObject[@"data"];
                
                NSString* since = dataDic[@"since"];
                
                NSString* dataStr = [self changeTimestampToDataStrWithTimestamp:since];
                
//                NSString* string = [self componentsSeparatedByStringWithWeek:dataStr];
//                
//                [_dataArr addObject:string];
                NSLog(@"5%@",dataStr);
                
                
            }];
                
       
            [NSThread sleepForTimeInterval:0.75];
    
            [PBHTTPEngine requestSixthPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                NSDictionary* dataDic = responseObject[@"data"];
                
                NSString* since = dataDic[@"since"];
                
                NSString* dataStr = [self changeTimestampToDataStrWithTimestamp:since];
                
//                NSString* string = [self componentsSeparatedByStringWithWeek:dataStr];
//                
//                string = @"昨天";
//                
//                [_dataArr addObject:string];
                NSLog(@"6%@",dataStr);
                
                
                
            }];
            
       
           
       
            [NSThread sleepForTimeInterval:0.8];
    
            [PBHTTPEngine requestSeventhPageJsonWithBlock:^(NSError *error, id responseObject) {
                
                //                NSData* dicData = [NSJSONSerialization dataWithJSONObject:responseObject options:NSJSONWritingPrettyPrinted error:nil];
                //
                //                NSString* jsonDicStr = [[NSString alloc]initWithData:dicData encoding:NSUTF8StringEncoding];
                //                
                //                NSLog(@"jsonStr == %@",jsonDicStr);
                
                NSDictionary* dataDic = responseObject[@"data"];
                
                NSString* since = dataDic[@"since"];
                
                NSString* dataStr = [self changeTimestampToDataStrWithTimestamp:since];
                
//                NSString* string = [self componentsSeparatedByStringWithWeek:dataStr];
//                
//                string = @"今天";
//                
//                [_dataArr addObject:string];
                NSLog(@"7%@",dataStr);
                
            }];
        
    

}
//-(NSArray* )passOnWeekArry
//{
// 
//    if (_delegate && [_delegate respondsToSelector:@selector(passOnWeekArry)])
//    {
//        NSArray* dateArr = _dataArr;
//        
//        return dateArr;
//    }
//  
//    return nil;
//}

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


-(NSString* )changeTimestampToDataStrWithTimestamp:(NSString* )timestamp
{
    
    NSDateFormatter* formatter = [[NSDateFormatter alloc]init];
    
    [formatter setDateFormat:@"星期e"];
    
    NSDate* date = [NSDate dateWithTimeIntervalSince1970:[timestamp doubleValue]];
    
    NSString* dateStr = [formatter stringFromDate:date];
    
    return dateStr;

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
