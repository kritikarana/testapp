//
//  DatePickerView.m
//  testapp
//
//  Created by admin on 4/27/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "DatePickerView.h"
#import "DatePickerViewDelegate.h"

@implementation DatePickerView

- (IBAction)doneTapped:(id)sender {
    
    NSDate *selectedDate=[self->datePicker date];
    NSDateFormatter * formatter= [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterShortStyle];
    NSString  *dateStr=[formatter stringFromDate:selectedDate];
    
    [self.dateDelegate didSelectFromDatePickerView: dateStr];
}
                        
@end
