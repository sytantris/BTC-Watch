//
//  BTCMenuController.h
//  BTC Watch
//
//  Written by Sytantris Dyat <sytantris.dyat@gmail.com>
//  First created: 2013-10-11.
//  Last updated: 2016-09-19.
//

#import <Foundation/Foundation.h>
#import "BTCMenu.h"
#import "BTCValue.h"

@interface BTCMenuController : NSObject

  @property (retain) BTCMenu* menu;
  @property (retain) NSStatusItem* barItem;
  @property (retain) BTCValue* value;
  @property (retain) NSTimer* timer;

@end
