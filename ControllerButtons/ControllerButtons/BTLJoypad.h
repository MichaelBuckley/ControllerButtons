//
//  BTLJoypad.h
//  ControllerButtons
//
//  Created by Buckley on 3/6/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BTLNamedObject.h"

@class BTLJoypadConfig;

@interface BTLJoypad : BTLNamedObject

@property (nonatomic, readonly,  copy)   NSArray*   configs;
@property (nonatomic, readwrite, assign) NSUInteger selectedConfigIndex;

- (void) addConfig:    (BTLJoypadConfig*) config;
- (void) removeConfig: (BTLJoypadConfig*) config;

@end
