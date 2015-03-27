//
//  MainScreenTest.m
//  MainScreenTest
//
//  Created by Giovanni Lodi on 27/03/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF.h>

@interface MainScreenTest : XCTestCase

@end

@implementation MainScreenTest

- (void)testUI {
    [tester waitForViewWithAccessibilityLabel:@"Bench"];
    [tester waitForViewWithAccessibilityLabel:@"say hello"];
    [tester waitForViewWithAccessibilityLabel:@"show elements"];
    [tester waitForViewWithAccessibilityLabel:@"mokacoding.com"];
}

@end
