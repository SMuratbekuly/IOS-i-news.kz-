//
//  ServerConnectManager.h
//  i-news.kz(Muratbekuly.Shyngys)
//
//  Copyright (c) 2016 Kolesa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
@interface ServerConnectManager : NSObject

+(ServerConnectManager*) connectManager;

-(void)getAllCategoryFromWebURL:(NSString*) url
                onSuccess:(void(^)(NSArray* category))success
                onFailure:(void(^)(NSError* error, NSInteger statusCode)) failure;



@end
