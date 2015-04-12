#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ElementFormatter.h"

@interface ElementFormatterTests : XCTestCase

@property (nonatomic, strong) ElementFormatter *formatter;

@end

@implementation ElementFormatterTests

- (void)setUp {
    [super setUp];
    self.formatter = [[ElementFormatter alloc] init];
}

- (void)testNilArgument {
    XCTAssertNil([self.formatter formattedElementString:nil], @"ElementFormatter did not return nil when given nil data");
}

- (void)testMissingName {
    NSDictionary *data = @{ @"symbol": @"E", @"atomic_number": @"42" };
    XCTAssertNil([self.formatter formattedElementString:data], @"ElementFormatter did not return nil when given element data missing the name");
}

- (void)testMissingSymbol {
    NSDictionary *data = @{ @"name": @"element", @"atomic_number": @"42" };
    XCTAssertNil([self.formatter formattedElementString:data], @"ElementFormatter did not return nil when given element data missing the symbol");
}

- (void)testMissingAtomicNumber {
    NSDictionary *data = @{ @"name": @"element", @"symbol": @"E" };
    XCTAssertEqualObjects([self.formatter formattedElementString:data], @"[E] element", @"ElementFormatter did not format element data missing the atomic number as expected");
}

- (void)testSuccess {
    NSDictionary *data = @{ @"name": @"element", @"symbol": @"E", @"atomic_number": @"42" };
    XCTAssertEqualObjects([self.formatter formattedElementString:data], @"[E] element (42)", @"ElementFormatter did not format valid element data as expected");
}

@end
