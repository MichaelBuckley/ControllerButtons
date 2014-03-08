//
//  BTLInput.h
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BTLNamedObject.h"

@interface BTLInput : BTLNamedObject

- (void) keyDown;
- (void) keyUp;

@property (nonatomic, readwrite, assign) CGKeyCode keyCode;

@end
