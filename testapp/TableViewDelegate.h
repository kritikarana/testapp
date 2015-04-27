//
//  TableViewDelegate.h
//  testapp
//
//  Created by admin on 4/26/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TableViewDelegate <NSObject>

-(void) tableSelectedWithValue: (NSString *)value;

@end
