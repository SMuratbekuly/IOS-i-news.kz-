//
//  NewsViewController.h
//  i-news.kz(Muratbekuly.Shyngys)
//
//  Copyright (c) 2016 Kolesa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView* newsTableView;
@end
