//
//  BTLJoypad.h
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BTLInput;

@interface BTLJoypad : NSObject

- (instancetype) initWithName: (NSString*) name;

@property (nonatomic, readwrite, copy) NSString* name;

@end
