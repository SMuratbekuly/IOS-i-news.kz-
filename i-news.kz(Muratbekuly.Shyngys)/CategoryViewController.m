//
//  ViewController.m
//  i-news.kz(Muratbekuly.Shyngys)
//
//  Copyright (c) 2016 Kolesa. All rights reserved.
//

#import "CategoryViewController.h"
#import "CategoryCell.h"
#import "NewsCell.h"
#import "ServerConnectManager.h"
@interface CategoryViewController ()<NSURLConnectionDelegate>
@property (nonatomic, strong) NSMutableArray* categoriesArray;

@end

@implementation CategoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.categoriesArray =[NSMutableArray array];
    //Тут можно проверить одну из двух методов убрав или поставив коммент
    //[self getCategoryfromServer];
    [self getCategoryFromWeb];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark UITableViewDataSource<NSObject>

//Тут у нас AFNetworking + Singletone (ServerConnectManager) для проверки оставил API VK.com

-(void)getCategoryfromServer{
//

//NSString *url = @"https://api.vk.com/method/friends.get";
    
    NSString *url = @"https://api.i-news.kz/news/get-all";

    [[ServerConnectManager connectManager] getAllCategoryFromWebURL:url onSuccess:^(NSArray *category) {
        
        [self.categoriesArray addObjectsFromArray:category];
        
    } onFailure:^(NSError *error, NSInteger statusCode) {
        NSLog(@"error: %@, code %ld", [error localizedDescription], (long)statusCode);
    }];
    
 

}

// более простой способ через NSURLSession и ниже с помощью AFNetworking

-(void) getCategoryFromWeb{
    NSURL *url = [NSURL URLWithString:@"https://api.i-news.kz/category/get-all"];
    
    //NSDictionary* params = [NSDictionary dictionaryWithObjectsAndKeys:@"ushoh4ahpe8Aghahreel", @"appId",@"Ozaa5nic5oeph7eethok", @"appKey", nil];
    
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:url];
    request.HTTPMethod = @"GET";
    
    [request addValue:@"application/json; charset=utf-8" forHTTPHeaderField:@"Content-Type"];
   

    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithRequest:request completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        if (response) {
            NSLog(@"Response : %@", response);
       
            NSLog(@"ERROR - %@", error);
        }
    }] resume];
    


    /*NSURL *URL = [NSURL URLWithString:@"https://api.i-news.kz/category/get-all?id=7845511&appId=Ozaa5nic5oeph7eethok&app&appKey=ushoh4ahpe8Aghahreel"];
    NSURLRequest *request = [NSURLRequest requestWithURL:URL];
    AFHTTPRequestOperation *op = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    op.responseSerializer.acceptableContentTypes = [ op.responseSerializer.acceptableContentTypes setByAddingObject:@"application/json; charset=utf-8"];
    [op setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"JSON: %@", responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    [[NSOperationQueue mainQueue] addOperation:op];*/
}



- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    //return [self.categoriesArray count];
    return 5;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CategoryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellCategr"];
cell.categoryLabel.text = @"Category";
    return cell;
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
}

@end
