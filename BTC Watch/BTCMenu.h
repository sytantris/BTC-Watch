//
//  BTCMenu.h
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BTCValue.h"

@interface BTCMenu : NSMenu

  @property (assign) BOOL hasValue;
  @property (retain) NSMenuItem* errorItem;
  @property (retain) NSMenuItem* preferencesItem;
  @property (retain) NSMenuItem* quitItem;

  - (void) insertErrorItem;
  - (void) removeErrorItem;

@end
