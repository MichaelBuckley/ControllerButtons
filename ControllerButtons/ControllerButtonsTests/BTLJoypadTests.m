//
//  BTLJoypadTests.m
//  ControllerButtons
//
//  Created by Buckley on 3/7/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <DDHidLib/DDHidLib.h>
#import <XCTest/XCTest.h>

#import "BTLJoypad.h"
#import "BTLJoypadConfig.h"

@interface BTLJoypadTests : XCTestCase

@end

@implementation BTLJoypadTests

- (void)testAddRemoveConfig
{
    BTLJoypad*       joypad  = [[BTLJoypad alloc]       initWithName:   @"Test Joypad"];
    BTLJoypadConfig* config1 = [[BTLJoypadConfig alloc] initWithName: @"Test Config 1"];
    BTLJoypadConfig* config2 = [[BTLJoypadConfig alloc] initWithName: @"Test Config 2"];
    
    [joypad addConfig:     nil];
    [joypad addConfig: config1];
    [joypad addConfig: config2];
    
    NSArray* expectedConfigs = @[ config1, config2 ];
    XCTAssertEqualObjects([joypad configs], expectedConfigs, @"");
    
    [joypad removeConfig:     nil];
    [joypad removeConfig: config1];
    
    expectedConfigs = @[ config2 ];
    XCTAssertEqualObjects([joypad configs], expectedConfigs, @"");
}

- (void) testCreateDefaultConfig
{
    BTLJoypad* joypad = [[BTLJoypad alloc] initWithName: @"Test Joypad"];
    
    XCTAssertEqual([[joypad configs] count], (NSUInteger) 1, @"");
}

@end
