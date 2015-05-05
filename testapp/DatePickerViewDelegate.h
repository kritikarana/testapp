//
//  DatePickerViewDelegate.h
//  testapp
//
//  Created by admin on 4/27/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DatePickerViewDelegate <NSObject>

-(void) didSelectFromDatePickerView: (NSString *) dateValue;
-(void) datePickerDoneTapped;

@end
