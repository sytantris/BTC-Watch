//
//  AppDelegate.m
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

  @synthesize controller;

  - (void) applicationDidFinishLaunching:(NSNotification *)aNotification {
      controller = [[BTCMenuController alloc] init];
  }

@end
