//
//  NewsViewController.m
//  i-news.kz(Muratbekuly.Shyngys)
//
//  Copyright (c) 2016 Kolesa. All rights reserved.
//

#import "NewsViewController.h"
#import "NewsCell.h"
@interface NewsViewController ()

@end

@implementation NewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - UITableViewDataSource<NSObject>
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 3;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellId = @"newsCell";
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    cell.headerLabel.text = @"News!";
    cell.imageNews.backgroundColor = [UIColor greenColor];
    return cell;
}

@end
