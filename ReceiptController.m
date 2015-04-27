//
//  ReceiptController.m
//  testapp
//
//  Created by admin on 4/25/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import "ReceiptController.h"

@interface ReceiptController ()

@end

@implementation ReceiptController

@synthesize receiptBillLabel;
@synthesize receiptBillLabelText;

@synthesize receiptTipLabel;
@synthesize receiptTipLabelText;

@synthesize receiptTotalLabel;
@synthesize receiptTotalLabelText;

@synthesize receiptSplitBetweenLabel;
@synthesize receiptSplitBetweenLabelText;

@synthesize receiptPerPersonLabel;
@synthesize receiptPerPersonLabelText;




- (void)viewDidLoad {
    [super viewDidLoad];
    
    receiptBillLabel.text=receiptBillLabelText;
   
    receiptTipLabel.text=receiptTipLabelText;
    
    receiptTotalLabel.text=receiptTotalLabelText;
    
    receiptSplitBetweenLabel.text=receiptSplitBetweenLabelText;
    
    receiptPerPersonLabel.text=receiptPerPersonLabelText;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}




@end
