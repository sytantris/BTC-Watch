//
//  BTCValue.m
//  BTC Watch
//
//  Written by Sytantris Dyat <sytantris.dyat@gmail.com>
//  First created: 2013-10-11.
//  Last updated: 2016-09-19.
//


#import "BTCValue.h"

@implementation BTCValue

@synthesize currentValue, currentVal, previousVal, _arrow;

  - (BTCValue*) init {
      if ((self = [super init])) {
        self.previousVal = [NSNumber numberWithDouble:0];
        [self fetchCurrentValue];
      }
      return self;
  }

  - (void) fetchCurrentValue {
      dispatch_sync(urlBgQueue, ^{
        @try {
          NSData* data = [NSData dataWithContentsOfURL:url];
          currentValue = [self formatData:[self getData:data]];
        }
        @catch (NSException* e) {
          currentValue = [NSMutableString stringWithString:@"!"];
        }
        @finally {}
      });
  }

  - (NSMutableString*) getData: (NSData*)responseData {
      NSError* error;
      NSDictionary* json = [NSJSONSerialization JSONObjectWithData:responseData
                                                options:kNilOptions
                                                error:&error];
     return [[[json objectForKey:@"bpi"] objectForKey:@"CAD"] objectForKey:@"rate"];
  }

  - (NSMutableString*) formatData: (NSString*)value {
    NSNumberFormatter* f = [[NSNumberFormatter alloc] init];
    self.currentVal = [f numberFromString:value];
    
    f.numberStyle = NSNumberFormatterCurrencyStyle;
    return [NSMutableString stringWithString:[f stringFromNumber:self.currentVal]];
  }

  - (NSString*) arrow {
    double cv = [self.currentVal doubleValue];
    double pv = [self.previousVal doubleValue];
    if (cv == pv) { return _arrow; }

    if (cv > pv) { _arrow = @"↑"; }
    else { _arrow = @"↓"; }
    
    if (pv == 0) { _arrow = @" "; }
    self.previousVal = self.currentVal;
    return _arrow;
  }

- (NSMutableString*) title {
  return [NSMutableString stringWithFormat:@"%@ %@", [self arrow], currentValue];
}

@end
