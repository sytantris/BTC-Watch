//
//  AppDelegate.h
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "BTCMenuController.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

//@property (assign) IBOutlet NSWindow *window;
@property (retain) BTCMenuController* controller;

@end
