//
//  BTLJoypad.m
//  ControllerButtons
//
//  Created by Buckley on 3/6/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import "BTLJoypad.h"
#import "BTLJoypadConfig.h"

@interface BTLJoypad ()

@property (nonatomic, readwrite, copy)   NSArray*        configs;
@property (nonatomic, readwrite, retain) NSMutableArray* mutableConfigs;

@end

@implementation BTLJoypad

- (instancetype) initWithName: (NSString*) name
{
    if (self = [super initWithName: name])
    {
        _configs        = [NSArray new];
        _mutableConfigs = [NSMutableArray new];
    }
    
    return self;
}

- (void) addConfig: (BTLJoypadConfig*) config
{
    if (config != nil)
    {
        [[self mutableConfigs] addObject: config];
        
        [self setConfigs: [self mutableConfigs]];
    }
}

- (void) removeConfig: (BTLJoypadConfig*) config
{
    if (config != nil)
    {
        [[self mutableConfigs] removeObject: config];
        
        [self setConfigs: [self mutableConfigs]];
    }
}

- (BTLJoypadConfig*) selectedConfig
{
    return [[self configs] objectAtIndex: [self selectedConfigIndex]];
}

- (NSArray*) configs
{
    if ([_configs count] == 0)
    {
        BTLJoypadConfig* config = [[BTLJoypadConfig alloc] initWithName: NSLocalizedString(@"Default", nil)];
        [self addConfig: config];
    }
    
    return _configs;
}

@end
