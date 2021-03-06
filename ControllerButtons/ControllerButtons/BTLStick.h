//
//  BTLStick.h
//  ControllerButtons
//
//  Created by Buckley on 3/4/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BTLNamedObject.h"

@class BTLInput;

@interface BTLStick : BTLNamedObject

@property (nonatomic, readwrite, assign) uint16_t  sensitivity;
@property (nonatomic, readonly,  retain) BTLInput* up;
@property (nonatomic, readonly,  retain) BTLInput* down;
@property (nonatomic, readonly,  retain) BTLInput* left;
@property (nonatomic, readonly,  retain) BTLInput* right;

@end
