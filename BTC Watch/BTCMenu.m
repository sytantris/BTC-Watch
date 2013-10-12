//
//  BTCMenu.m
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
//

#import "BTCMenu.h"

@interface BTCMenu ()
  - (void) quitApp;
@end

@implementation BTCMenu

  @synthesize hasValue, errorItem, preferencesItem, quitItem;

  - (NSMenu*) init {
      if ((self = [super init])) {
        errorItem = nil;
        preferencesItem = [self insertNewItemWithTitle:@"Preferences..." action:@selector(openPreferences) index:0];
        quitItem = [self insertNewItemWithTitle:@"Quit" action:@selector(quitApp) index:1];
      }
      return self;
  }

  - (NSMenuItem*) insertNewItemWithTitle: (NSString*)title
                  action: (SEL)action
                  index: (NSInteger)index {
      NSMenuItem* item = [[NSMenuItem alloc] initWithTitle:title
                                     action:action
                                     keyEquivalent:@""];
      [item setTarget:self];
      [item setEnabled:YES];
      [self insertItem:item atIndex:index];
      return item;
  }

  - (void) insertErrorItem {
      if (!errorItem) {
        errorItem = [self insertNewItemWithTitle:@"Cannot fetch current value." action:nil index:0];
      }
  }

  - (void) removeErrorItem {
      if (errorItem) {
        [self removeItem:errorItem];
        errorItem = nil;
      }
  }

  - (void) openPreferences {
  }

  - (void) quitApp {
        [[NSApplication sharedApplication] terminate:self];
  }

@end
