//
//  BTLStick.m
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import "BTLInput.h"
#import "BTLStick.h"

@implementation BTLStick

- (instancetype) initWithName: (NSString*) name
{
    if (self = [super init])
    {
        _name        = [name copy];
        _sensitivity = UINT16_MAX / 2;
        _up          = [[BTLInput alloc] initWithName: NSLocalizedString(@"Up",    nil)];
        _down        = [[BTLInput alloc] initWithName: NSLocalizedString(@"Down",  nil)];
        _left        = [[BTLInput alloc] initWithName: NSLocalizedString(@"Left",  nil)];
        _right       = [[BTLInput alloc] initWithName: NSLocalizedString(@"Right", nil)];
    }
    
    return self;
}

- (NSArray*) children
{
    return @[ [self up], [self down], [self left], [self right] ];
}

@end
