//
//  PickerView.h
//  testapp
//
//  Created by admin on 4/26/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PickerViewDelegate.h"

@interface PickerView : UIView<UIPickerViewDataSource, UIPickerViewDelegate>{
   
    NSArray *peopleArray;
   
    __weak IBOutlet UIPickerView *pickerView;
}

- (IBAction)doneTapped:(id)sender;

@property (nonatomic, assign) id <PickerViewDelegate> customDelegate;

@end
