//
//  ViewController.m
//  testapp
//
//  Created by admin on 4/25/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ViewController.h"
#import "PickerView.h"
#import "TableViewController.h"
#import "ReceiptController.h"
#import "DatePickerView.h"


#define TIPPICKER_BTN 0
#define SPLITPICKER_BTN 1
#define CALCULATE_BTN 2
#define DATEPICKER_BTN 3




@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyBoard)];
    
    [self.view addGestureRecognizer:tapGesture];

}

-(void)hideKeyBoard {
    [billTextField resignFirstResponder];
    
}

-(void) viewWillAppear:(BOOL)animated{
    self.title=@"Tip Calculator";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
  }

- (IBAction)btnTapped:(id)sender {
    
    
    UIButton * btn =(UIButton *) sender;
    if (btn.tag==TIPPICKER_BTN){
        UIStoryboard * storyBoard=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
        TableViewController *cntrl = (TableViewController *)[storyBoard instantiateViewControllerWithIdentifier:@"TableViewController"];
        cntrl.tableDelegate = self;
        [self.navigationController pushViewController:cntrl animated:YES];
        
    }else if (btn.tag==SPLITPICKER_BTN){
     
        NSArray * bundleArray= [[NSBundle mainBundle] loadNibNamed:@"PickerView" owner:self options:nil];
        PickerView * pickerView=(PickerView *)[bundleArray objectAtIndex:0];
        pickerView.customDelegate=self;
        tempTextField.inputView=pickerView;
        [tempTextField becomeFirstResponder];
        
    }else if (btn.tag==CALCULATE_BTN){
        
        float bill=[self->billTextField.text floatValue];
        int tip=[self->tipLabel.text floatValue] ;
        float total= bill + (bill * tip /100);
        int splitBetween=[self->splitLabel.text floatValue];
        float perPerson= total / splitBetween;
        
        NSNumber * totalWrapper=[NSNumber numberWithFloat:total];
        self.totalLabel.text=[totalWrapper stringValue];
        
        NSNumber * perPersonWrapper=[NSNumber numberWithFloat:perPerson];
        self.perPersonLabel.text=[perPersonWrapper stringValue];
        
        
        [self performSegueWithIdentifier:@"showReceipt" sender:nil];
        
    }else if (btn.tag==DATEPICKER_BTN){
        
        NSArray * dateBundleArray=[[NSBundle mainBundle] loadNibNamed:@"DatePickerView" owner:self options:nil];
        DatePickerView * dateView=[dateBundleArray objectAtIndex:0];
        
        dateView.dateDelegate=self;
        
        tempTextField.inputView=dateView;
        [tempTextField becomeFirstResponder];
        
        
    }
    
    
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    ReceiptController *secondController=[segue destinationViewController];
    
    secondController.receiptBillLabelText=billTextField.text;
    secondController.receiptTipLabelText=tipLabel.text;
    secondController.receiptTotalLabelText=_totalLabel.text;
    secondController.receiptSplitBetweenLabelText=splitLabel.text;
    secondController.receiptPerPersonLabelText=_perPersonLabel.text;
    secondController.receiptBillLabelText=dateLabel.text;
    
}

- (void) didSelectFromDatePickerView:(NSString *)dateValue{
    
    NSLog(@"%s date is : %@",__PRETTY_FUNCTION__, dateValue);
    dateLabel.text=dateValue;
    [tempTextField resignFirstResponder];
}

- (void) datePickerDoneTapped{
    NSLog(@"datePickerDoneTapped");
    [tempTextField resignFirstResponder];
}
- (void) didSelectFromPickerView:(NSString *)value{
    NSLog(@"The value selected: %@ ", value);
    splitLabel.text=value;
}

-(void) pickerDoneTapped{
    NSLog(@"pickerDoneTapped");
    [tempTextField resignFirstResponder];
}

-(void) tableSelectedWithValue:(NSString *)value{
    NSLog(@"tableSelectedWithValue: %@", value);
    tipLabel.text=value;
}

@end
