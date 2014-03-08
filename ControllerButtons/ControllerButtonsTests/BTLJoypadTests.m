//
//  BTLJoypadTests.m
//  ControllerButtons
//
//  Created by Buckley on 3/7/14.
//  Copyright (c) 2014 Michael Buckley. All rights reserved.
//

#import <OCMock/OCMock.h>
#import <XCTest/XCTest.h>

#import "BTLJoypad.h"
#import "BTLJoypadConfig.h"

@interface BTLJoypadTests : XCTestCase

@end

@implementation BTLJoypadTests

- (void)testAddRemoveConfig
{
    id device = [OCMockObject mockForClass: [DDHidJoystick class]];
    [[[device stub] andReturn: @"Test Joypad"] productName];
    [[[device stub] andReturnValue: @(4)] numberOfButtons];
    [[[device stub] andReturnValue: @(1)] countOfSticks];
    
    BTLJoypad*       joypad  = [[BTLJoypad alloc] initWithDevice: device];
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
    id device = [OCMockObject mockForClass: [DDHidJoystick class]];
    [[[device stub] andReturn: @"Test Joypad"] productName];
    [[[device stub] andReturnValue: @(4)] numberOfButtons];
    [[[device stub] andReturnValue: @(1)] countOfSticks];
    
    BTLJoypad*       joypad  = [[BTLJoypad alloc] initWithDevice: device];
    
    XCTAssertEqual([[joypad configs] count], (NSUInteger) 1, @"");
}

@end
