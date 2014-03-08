//
//  BTLNamedObject.m
//  ControllerButtons
//
//  Created by Buckley on 3/6/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import "AutoCoding.h"
#import "BTLNamedObject.h"

@implementation BTLNamedObject

- (instancetype) initWithName: (NSString*) name
{
    if (self = [super init])
    {
        _name = [name copy];
    }
    
    return self;
}

- (NSUInteger) hash
{
    return [[self name] length];
}

- (BOOL) isEqual: (id) object
{
    BOOL equal = [object isKindOfClass: [self class]];
    
    if (equal)
    {
        for (NSString* key in [self codableProperties])
        {
            equal = equal && [[self valueForKey: key] isEqual: [object valueForKey: key]];
        }
    }
    
    return equal;
}

- (id) copyWithZone: (NSZone*) zone
{
    id copy = [[[self class] alloc] init];
    
    for (NSString *key in [self codableProperties])
    {
        [copy setValue: [self valueForKey: key] forKey :key];
    }
    
    return copy;
}

@end
