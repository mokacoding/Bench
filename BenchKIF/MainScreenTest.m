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

static NSString *kTitle = @"Bench";
static NSString *kSayHello = @"say hello";
static NSString *kShowElements = @"show elements";
static NSString *kFooter = @"mokacoding.com";

static NSString *kHelloAlertTitle = @"Hello";
static NSString *kHelloAlertMessage = @"Sup?";
static NSString *kHelloAlertButton = @"Dismiss";

static NSString *kElementsTitle = @"Elements";
static NSString *kElementsBack = @"Back";
static NSString *kElementsFirst = @"[H] Hydrogen (1)";
static NSString *kElementsLast = @"[Uuo] Ununoctium (118)";

@interface MainScreenTest : XCTestCase

@end

@implementation MainScreenTest

- (void)testUI {
    [tester waitForViewWithAccessibilityLabel:kTitle];
    [tester waitForViewWithAccessibilityLabel:kSayHello];
    [tester waitForViewWithAccessibilityLabel:kShowElements];
    [tester waitForViewWithAccessibilityLabel:kFooter];
}

/**
 *  When I tap the "say hello" button, I see a greetings alert, so that I can be happier :)
 */
- (void)testSayHello {
    [tester tapViewWithAccessibilityLabel:kSayHello];
    
    [tester waitForViewWithAccessibilityLabel:kHelloAlertTitle];
    [tester waitForViewWithAccessibilityLabel:kHelloAlertMessage];
    [tester waitForViewWithAccessibilityLabel:kHelloAlertButton];
    
    [tester tapViewWithAccessibilityLabel:kHelloAlertButton];
    
    [tester waitForAbsenceOfViewWithAccessibilityLabel:kHelloAlertTitle];
    [tester waitForAbsenceOfViewWithAccessibilityLabel:kHelloAlertMessage];
    [tester waitForAbsenceOfViewWithAccessibilityLabel:kHelloAlertButton];
}

/**
 *  When I tap the "show elements" button, I see a listt of elements, so I can expand my knowledge
 */
- (void)testShowElements {
    [tester tapViewWithAccessibilityLabel:kShowElements];
    
    [tester waitForViewWithAccessibilityLabel:kElementsTitle];
    [tester waitForViewWithAccessibilityLabel:kElementsFirst];
    [tester waitForViewWithAccessibilityLabel:kElementsLast];
    [tester waitForViewWithAccessibilityLabel:kElementsBack];
    
    [tester tapViewWithAccessibilityLabel:kElementsBack];
    
    [tester waitForAbsenceOfViewWithAccessibilityLabel:kElementsTitle];
}

@end
