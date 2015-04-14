#import <Specta.h>
#import <Expecta.h>
#import "ElementFormatter.h"

SpecBegin(ElementFormatter)

describe(@"ElementFormatter", ^{
    __block ElementFormatter *formatter;
    
    beforeAll(^{
        formatter = [[ElementFormatter alloc] init];
    });
    
    context(@"when formatting an element dictionary", ^{
        context(@"when the dictionary is nil", ^{
            it(@"returns nil", ^{
                expect([formatter formattedElementString:nil]).to.beNil();
            });
        });
        
        context(@"when the dictionary is missing the name key", ^{
            it(@"returns nil", ^{
                expect([formatter formattedElementString:@{ @"symbol": @"E", @"atomic_number": @"42" }]).to.beNil();
            });
        });
        
        context(@"when the dictionary is missing the symbol key", ^{
            it(@"returns nil", ^{
                expect([formatter formattedElementString:@{ @"name": @"element", @"atomic_number": @"42" }]).to.beNil();
            });
        });
        
        context(@"when the dictionary is missing the atomic_number key", ^{
            it(@"returns the [symbol] name format", ^{
                expect([formatter formattedElementString:@{ @"name": @"element", @"symbol": @"E" }]).to.equal(@"[E] element");
            });
        });
        
        context(@"when the dictionary contains all the keys", ^{
            it(@"returns the expected string it the [symbol] name (atomic number) format", ^{
                expect([formatter formattedElementString:@{ @"name": @"element", @"symbol": @"E", @"atomic_number": @"42" }]).to.equal(@"[E] element (42)");
            });
        });
    });
});

SpecEnd
