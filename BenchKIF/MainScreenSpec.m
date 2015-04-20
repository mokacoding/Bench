//
//  MainScreenSpec.m
//  Bench
//
//  Created by Giovanni on 16/04/2015.
//  Copyright (c) 2015 mokacoding. All rights reserved.
//

#import <KIF.h>
#import <Specta.h>

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

SpecBegin(MainScreen)

describe(@"Main screen", ^{
    context(@"when I tap the 'say hello' button", ^{
        before(^{
            [tester tapViewWithAccessibilityLabel:kSayHello];
        });

        it(@"I see a greetings alert", ^{
            [tester waitForViewWithAccessibilityLabel:kHelloAlertTitle];
            [tester waitForViewWithAccessibilityLabel:kHelloAlertMessage];
            [tester waitForViewWithAccessibilityLabel:kHelloAlertButton];
        });

        after(^{
            [tester tapViewWithAccessibilityLabel:kHelloAlertButton];

            [tester waitForAbsenceOfViewWithAccessibilityLabel:kHelloAlertTitle];
            [tester waitForAbsenceOfViewWithAccessibilityLabel:kHelloAlertMessage];
            [tester waitForAbsenceOfViewWithAccessibilityLabel:kHelloAlertButton];
        });
    });

    context(@"when I tap the 'show elements' button", ^{
        before(^{
            [tester tapViewWithAccessibilityLabel:kShowElements];
        });

        it(@"I see a list of elements", ^{
            [tester waitForViewWithAccessibilityLabel:kElementsTitle];
            [tester waitForViewWithAccessibilityLabel:kElementsFirst];
            [tester waitForViewWithAccessibilityLabel:kElementsLast];
            [tester waitForViewWithAccessibilityLabel:kElementsBack];
        });

        after(^{
            [tester tapViewWithAccessibilityLabel:kElementsBack];
            [tester waitForAbsenceOfViewWithAccessibilityLabel:kElementsTitle];
        });
    });
});

describe(@"Main screen", ^{
    context(@"when I tap the 'show elements' button", ^{
        before(^{
            [tester tapViewWithAccessibilityLabel:@"show elements"];
        });

        it(@"I see a list of elements, so I can expand my knowledge", ^{
            [tester waitForViewWithAccessibilityLabel:@"Elements"];
            [tester waitForViewWithAccessibilityLabel:@"[H] Hydrogen (1)" ];
            [tester waitForViewWithAccessibilityLabel:@"[Uuo] Ununoctium (118)"];
        });

        after(^{
            // Code to restore the app to the default state
            [tester tapViewWithAccessibilityLabel:kElementsBack];
            [tester waitForAbsenceOfViewWithAccessibilityLabel:kElementsTitle];
        });
    });
});

SpecEnd
