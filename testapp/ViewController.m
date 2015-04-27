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

#define TIPPICKER_BTN 0
#define SPLITPICKER_BTN 1
#define CALCULATE_BTN 2




@interface ViewController ()

@end

@implementation ViewController

//int tip;

- (void)viewDidLoad {
    [super viewDidLoad];
    UITapGestureRecognizer * tapGesture = [[UITapGestureRecognizer alloc]
                                           initWithTarget:self
                                           action:@selector(hideKeyBoard)];
    
    [self.view addGestureRecognizer:tapGesture];    // Do any additional setup after loading the view, typically from a nib.
}
-(void)hideKeyBoard {
    [billTextField resignFirstResponder];
//    [totalTextField resignFirstResponder];
//    [perPersonTextField resignFirstResponder];
    
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
    }
    
    
    
}

-(void) didSelectFromPickerView:(NSString *)value{
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
