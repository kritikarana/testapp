//
//  ReceiptController.h
//  testapp
//
//  Created by admin on 4/25/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceiptController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *receiptBillLabel;

@property (weak, nonatomic) IBOutlet UILabel *receiptTipLabel;

@property (weak, nonatomic) IBOutlet UILabel *receiptTotalLabel;

@property (weak, nonatomic) IBOutlet UILabel *receiptSplitBetweenLabel;

@property (weak, nonatomic) IBOutlet UILabel *receiptPerPersonLabel;

- (IBAction)displayReceiptButton:(id)sender;

@end

