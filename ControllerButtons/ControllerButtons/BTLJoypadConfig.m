//
//  BTLJoypad.m
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import "BTLInput.h"
#import "BTLJoypadConfig.h"
#import "BTLStick.h"

@interface BTLJoypadConfig ()

@property (nonatomic, readonly, retain) NSMutableArray* sticks;
@property (nonatomic, readonly, retain) NSMutableArray* buttons;

@end

@implementation BTLJoypadConfig

- (instancetype) initWithName: (NSString*) name
{
    if (self = [super initWithName: name])
    {
        _sticks  = [NSMutableArray new];
        _buttons = [NSMutableArray new];
    }
    
    return self;
}

- (NSArray*) children;
{
    NSMutableArray* children = [NSMutableArray new];
    [children addObjectsFromArray: [self sticks]];
    [children addObjectsFromArray: [self buttons]];
    
    return children;
}

@end
