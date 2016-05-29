//
//  ViewController.h
//  i-news.kz(Muratbekuly.Shyngys)
//
//  Copyright (c) 2016 Kolesa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryViewController : UIViewController <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView* categoriesTableView;
@end

