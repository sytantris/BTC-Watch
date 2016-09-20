//
//  BTCMenuController.m
//  BTC Watch
//
//  Written by Sytantris Dyat <sytantris.dyat@gmail.com>
//  First created: 2013-10-11.
//  Last updated: 2016-09-19.
//

#import "BTCMenuController.h"

@implementation BTCMenuController

  @synthesize menu, barItem, value, timer;

  - (id) init {
      if ((self = [super init])) {
        menu = [[BTCMenu alloc] init];
        value = [[BTCValue alloc] init];
        [self fetchValue];
        [self activateStatusMenu];
        timer = [NSTimer scheduledTimerWithTimeInterval:1
                         target:self
                         selector:@selector(fetchValue)
                         userInfo:nil
                         repeats:YES];
      }
      return self;
  }

   - (void) activateStatusMenu {
      NSStatusBar* bar = [NSStatusBar systemStatusBar];
      barItem = [bar statusItemWithLength:NSVariableStatusItemLength];
      [barItem setTitle:[value title]];
      [barItem setEnabled:YES];
      [barItem setHighlightMode:YES];
      [barItem setMenu:menu];
  }

  - (void) fetchValue {
      [value fetchCurrentValue];
      [barItem setTitle:[value title]];
      if ([value.currentValue isEqualToString:@"!"]) {
        [menu insertErrorItem];
      }
      else {
        [menu removeErrorItem];
      }
      //NSLog(@"value: %@", [value title]);
  }
@end
