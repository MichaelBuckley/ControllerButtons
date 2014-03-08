//
//  BTLInput.m
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import "BTLInput.h"

@implementation BTLInput

- (void) keyDown
{
    CGEventPost(kCGHIDEventTap, CGEventCreateKeyboardEvent(NULL, [self keyCode], true));
}

- (void) keyUp
{
    CGEventPost(kCGHIDEventTap, CGEventCreateKeyboardEvent(NULL, [self keyCode], false));
}

@end
