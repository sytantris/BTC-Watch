//
//  BTCValue.h
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
//

#define urlBgQueue dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0)
#define url [NSURL URLWithString:@"http://data.mtgox.com/api/2/BTCUSD/money/ticker_fast?pretty"]

#import <Foundation/Foundation.h>

@interface BTCValue : NSMutableString <NSURLConnectionDelegate>

  @property (retain) NSMutableString* currentValue;
  @property (retain) NSString* previousValue;

  - (void) fetchCurrentValue;

@end
