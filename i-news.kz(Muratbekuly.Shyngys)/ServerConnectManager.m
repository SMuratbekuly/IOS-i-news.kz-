//
//  ServerConnectManager.m
//  i-news.kz(Muratbekuly.Shyngys)
//
//  Copyright (c) 2016 Kolesa. All rights reserved.
//

#import "ServerConnectManager.h"
@implementation ServerConnectManager

+(ServerConnectManager*) connectManager{
   static ServerConnectManager* manager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[ServerConnectManager alloc] init];
    });
    return manager;
}
-(void)getAllCategoryFromWebURL:(NSString*) url
                      onSuccess:(void(^)(NSArray* category))success
                      onFailure:(void(^)(NSError* error, NSInteger statusCode)) failure{
    //параметры api vk.com
    /*NSDictionary* params = [NSDictionary dictionaryWithObjectsAndKeys:@"231464775", @"user_id",
                                                                      @"1", @"list_id",
                                                                      @"20", @"count",
                                                                      @"0", @"offset",
                                                                      @"city,domain", @"fields",
                                                                      @"ins", @"name_case", nil];*/
    
    
    NSDictionary* params = [NSDictionary dictionaryWithObjectsAndKeys:@"Ozaa5nic5oeph7eethok", @"appId",
                                                                      @"ushoh4ahpe8Aghahreel", @"appKey", nil];
    
    
    AFHTTPRequestOperationManager *managerOper = [AFHTTPRequestOperationManager manager];
    
    
    //[managerOper.requestSerializer setValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
 
    
    
    [managerOper GET:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"RESPONSE OBJECT CATEGORY : %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"ERROR - %@", error);
    }];
    /*AFJSONRequestSerializer* jsonRequestSerializer = [AFJSONRequestSerializer serializer];
    [managerOper setRequestSerializer:jsonRequestSerializer];*/
    
}

@end
