//
//  BTLJoypad.h
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BTLNamedObject.h"

@class BTLInput;

@interface BTLJoypadConfig : BTLNamedObject

@property (nonatomic, readwrite, copy) NSString* name;

@end
