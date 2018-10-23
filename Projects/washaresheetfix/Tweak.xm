#define PLIST_PATH @"/var/mobile/Library/Preferences/com.dpkg.washaresheetfix.plist"

inline bool GetPrefBool (NSString *key) {
                return [[[NSDictionary 
dictionaryWithContentsOfFile:PLIST_PATH] valueForKey:key] 
boolValue];
}

@interface WAActionSheetButton : UIImageView

@property (nonatomic, copy, readwrite) UIColor *BackgroundColor;

@end

%hook WAActionSheetButton

- (void)layoutSubviews 
{
  if (GetPrefBool (@"key1")) 
{
self.BackgroundColor = [[UIColor blackColor]colorWithAlphaComponent:1];

}else{
     self.BackgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.8];
}
}
%end

%hook UILabel

        -(void)layoutSubviews 
{
  if (GetPrefBool (@"key3")) 
{
            %orig;
            self.textColor = [UIColor whiteColor];
            self.backgroundColor = [UIColor clearColor];

        }else{

        return %orig();
}
}
%end
