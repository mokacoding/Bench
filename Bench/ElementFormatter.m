#import "ElementFormatter.h"

@implementation ElementFormatter

- (NSString *)formattedElementString:(NSDictionary *)elementData {
    if (!elementData) { return nil; }
    if (!elementData[@"name"]) { return nil; }
    if (!elementData[@"symbol"]) { return nil; }
    
    NSString *formattedElementString = [NSString stringWithFormat:@"[%@] %@", elementData[@"symbol"], elementData[@"name"]];
    
    if (elementData[@"atomic_number"]) {
        formattedElementString = [formattedElementString stringByAppendingFormat:@" (%@)", elementData[@"atomic_number"]];
    }
    
    return formattedElementString;
}

@end
