//
//  DatePickerView.h
//  testapp
//
//  Created by admin on 4/27/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DatePickerViewDelegate.h"

@interface DatePickerView : UIView{
    
    __weak IBOutlet UIDatePicker *datePicker;
}


- (IBAction)doneTapped:(id)sender;

@property (nonatomic, assign) id <DatePickerViewDelegate> dateDelegate;

@end
