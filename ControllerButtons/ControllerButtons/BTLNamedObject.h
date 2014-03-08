//
//  BTLNamedObject.h
//  ControllerButtons
//
//  Created by Buckley on 3/6/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BTLNamedObject : NSObject<NSCopying>

- (instancetype) initWithName: (NSString*) name;

@property (nonatomic, readwrite, copy) NSString* name;

@end
