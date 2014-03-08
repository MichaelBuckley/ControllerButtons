//
//  BTLJoypad.h
//  ControllerButtons
//
//  Created by Buckley on 3/6/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <DDHidLib/DDHidLib.h>
#import <Foundation/Foundation.h>

#import "BTLNamedObject.h"

@class BTLJoypadConfig;

@interface BTLJoypad : BTLNamedObject

- (instancetype) initWithDevice: (DDHidJoystick*) device;

- (void) addConfig:    (BTLJoypadConfig*) config;
- (void) removeConfig: (BTLJoypadConfig*) config;

@property (nonatomic, readonly,  copy)   NSArray*   configs;
@property (nonatomic, readwrite, assign) NSUInteger selectedConfigIndex;

@property (nonatomic, readonly,  assign) NSUInteger numberOfButtons;
@property (nonatomic, readonly,  assign) NSUInteger numberOfSticks;

@end
