//
//  BTLInput.m
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import "BTLInput.h"

@implementation BTLInput

- (instancetype) initWithName: (NSString*) name
{
    if (self = [super init])
    {
        _name = [name copy];
    }
    
    return self;
}

- (void) keyDown
{
    CGEventPost(kCGHIDEventTap, CGEventCreateKeyboardEvent(NULL, [self keyCode], true));
}

- (void) keyUp
{
    CGEventPost(kCGHIDEventTap, CGEventCreateKeyboardEvent(NULL, [self keyCode], false));
}

@end
