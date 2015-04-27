//
//  TableViewController.h
//  testapp
//
//  Created by admin on 4/26/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewDelegate.h"

@interface TableViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>{
     NSArray * tableArray;
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, assign) id <TableViewDelegate> tableDelegate;

@end

@interface CustomTableCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel * cellLabel;

@end