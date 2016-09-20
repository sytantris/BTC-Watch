//
//  BTCValue.h
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013-2016 Sytantris Dyat. All rights reserved.
//
//


#define urlBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
#define url [NSURL URLWithString:@"https://api.coindesk.com/v1/bpi/currentprice/CAD.json"]

#import <Foundation/Foundation.h>

@interface BTCValue : NSMutableString <NSURLConnectionDelegate>

  @property (retain) NSMutableString* currentValue;
  @property (retain) NSNumber* currentVal;
  @property (retain) NSNumber* previousVal;
  @property (retain) NSString* _arrow;

  - (void) fetchCurrentValue;
  - (NSMutableString*) title;

@end
