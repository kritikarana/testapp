//
//  PickerView.m
//  testapp
//
//  Created by admin on 4/26/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "PickerView.h"

@implementation PickerView


-(void) awakeFromNib{

    peopleArray= [[NSArray alloc] initWithObjects:@"1",@"2", @"3",@"4", @"5",@"6", @"7",@"8", @"9",@"10", @"11",@"12",nil];
   
}


#pragma UIPickerview Datasource methods


- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    
    return 1;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
  
    return [peopleArray count];
}


#pragma UIPickerview Delegate methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    
        return [peopleArray objectAtIndex:row];
   
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
    NSString * selectedValue=[peopleArray objectAtIndex:row];
    [self.customDelegate didSelectFromPickerView:selectedValue];
}



- (IBAction)doneTapped:(id)sender {
    [self.customDelegate pickerDoneTapped];
}
@end
