//
//  TableViewController.m
//  testapp
//
//  Created by admin on 4/26/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    tableArray=[[NSArray alloc] initWithObjects:@"10%",@"15%",@"20%",nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return tableArray.count;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomTableCell *tableCell=(CustomTableCell *) [tableView dequeueReusableCellWithIdentifier:@"CustomTableCell"];
    tableCell.cellLabel.text=[tableArray objectAtIndex:indexPath.row];
    return tableCell;
}

-(void) tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString * selectedValue=[tableArray objectAtIndex:indexPath.row];
 
    [self.tableDelegate tableSelectedWithValue:selectedValue];
    [self.navigationController popViewControllerAnimated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) viewWillAppear:(BOOL)animated{
    self.title=@"Pick tip %";
}

@end

@implementation CustomTableCell


@end