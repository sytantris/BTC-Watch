//
//  BTCMenuController.h
//  BTC Watch
//
//  Created by Sytantris Dyat on 2013-10-11.
//  Copyright (c) 2013 Sytantris Dyat. All rights reserved.
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
