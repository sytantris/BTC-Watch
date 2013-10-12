//
//  BTCValue.m
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
//

#import "BTCValue.h"

@implementation BTCValue

  @synthesize currentValue, previousValue;

  - (BTCValue*) init {
      if ((self = [super init])) {
        [self fetchCurrentValue];
      }
      return self;
  }

  - (void) fetchCurrentValue {
      dispatch_sync(urlBgQueue, ^{
        previousValue = currentValue;
        @try {
          NSData* data = [NSData dataWithContentsOfURL:url];
          currentValue = [NSMutableString stringWithString:[self getData:data]];
        }
        @catch (NSException* e) {
          currentValue = [NSMutableString stringWithString:@"!"];
        }
        @finally { }
      });
  }

  - (NSString*) getData: (NSData*)responseData {
      NSError* error;
      NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseData
                                                options:kNilOptions
                                                error:&error];
     return [[[json objectForKey:@"data"] objectForKey:@"last"] objectForKey:@"display_short"];
  }

@end
