//
//  BTCMenu.h
//  BTC Watch
//
//  Written by Sytantris Dyat <sytantris.dyat@gmail.com>
//  First created: 2013-10-11.
//  Last updated: 2016-09-19.
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
