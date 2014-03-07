//
//  BTLJoypad.h
//  ControllerButtons
//
//  Created by Buckley on 3/6/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BTLJoypadConfig;

@interface BTLJoypad : NSObject

@property (nonatomic, readwrite, copy) NSString*        name;
@property (nonatomic, readonly,  copy) NSArray*         configs;
@property (nonatomic, readwrite, weak) BTLJoypadConfig* selectedConfig;

@end
