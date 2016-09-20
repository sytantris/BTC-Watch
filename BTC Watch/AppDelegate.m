//
//  AppDelegate.m
//  BTC Watch
//
//  Written by Sytantris Dyat <sytantris.dyat@gmail.com>
//  First created: 2013-10-11.
//  Last updated: 2016-09-19.
//

#import "AppDelegate.h"

@implementation AppDelegate

  @synthesize controller;

  - (void) applicationDidFinishLaunching:(NSNotification *)aNotification {
      controller = [[BTCMenuController alloc] init];
  }

@end
