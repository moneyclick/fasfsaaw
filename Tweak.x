@import UIKit;

%hook UILabel
- (void)setText:(NSString *)text {
    if (text && ([text containsString:@" 279\] || [text containsString:@\₽\] || [text containsString:@\руб\])) {
 text = @\1 500 279,79 ₽\;
 }
 %orig(text);
}
%end