//
//  ViewController.h
//  testapp
//
//  Created by admin on 4/25/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickerViewDelegate.h"
#import "TableViewDelegate.h"
#import "DatePickerViewDelegate.h"

@interface ViewController : UIViewController <PickerViewDelegate, TableViewDelegate, DatePickerViewDelegate>{
    
    __weak IBOutlet UITextField *billTextField;
    
    __weak IBOutlet UILabel *tipLabel;
    
    __weak IBOutlet UILabel *splitLabel;
    
    __weak IBOutlet UILabel *dateLabel;
    
    __weak IBOutlet UITextField *tempTextField;

    
}

@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (weak, nonatomic) IBOutlet UILabel *perPersonLabel;

- (IBAction)btnTapped:(id)sender;


@end

