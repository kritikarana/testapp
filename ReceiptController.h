//
//  ReceiptController.h
//  testapp
//
//  Created by admin on 4/25/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReceiptController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *receiptBillLabel;

@property (strong, nonatomic) NSString * receiptBillLabelText;

@property (strong, nonatomic) IBOutlet UILabel *receiptTipLabel;

@property (strong, nonatomic) NSString * receiptTipLabelText;

@property (strong, nonatomic) IBOutlet UILabel *receiptTotalLabel;

@property (strong, nonatomic) NSString * receiptTotalLabelText;

@property (strong, nonatomic) IBOutlet UILabel *receiptSplitBetweenLabel;

@property (strong, nonatomic) NSString * receiptSplitBetweenLabelText;

@property (strong, nonatomic) IBOutlet UILabel *receiptPerPersonLabel;

@property (strong, nonatomic) NSString * receiptPerPersonLabelText;

@property (weak, nonatomic) IBOutlet UILabel *receiptDateLabel;

@property (strong, nonatomic) NSString * receiptDateLabelText;


@end

