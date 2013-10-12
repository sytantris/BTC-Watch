//
//  BTCMenuController.m
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
//

#import "BTCMenuController.h"

@implementation BTCMenuController

  @synthesize menu, barItem, value, timer;

  - (id) init {
      if ((self = [super init])) {
        menu = [[BTCMenu alloc] init];
        value = [[BTCValue alloc] init];
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
      [barItem setTitle:value.currentValue];
      [barItem setEnabled:YES];
      [barItem setHighlightMode:YES];
      [barItem setMenu:menu];
  }

  - (void) fetchValue {
      [value fetchCurrentValue];
      [barItem setTitle:value.currentValue];
      if ([value.currentValue isEqualToString:@"!"]) {
        [menu insertErrorItem];
      }
      else {
        [menu removeErrorItem];
      }
      NSLog(@"value: %@", value.currentValue);
  }
@end
