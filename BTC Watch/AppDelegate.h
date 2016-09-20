//
//  AppDelegate.h
//  BTC Watch
//
//  Written by Sytantris Dyat <sytantris.dyat@gmail.com>
//  First created: 2013-10-11.
//  Last updated: 2016-09-19.
//

#import <Cocoa/Cocoa.h>
#import "BTCMenuController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

//@property (assign) IBOutlet NSWindow *window;
@property (retain) BTCMenuController* controller;

@end
