#import <Foundation/Foundation.h>

@interface ResourceDownloader : NSObject

-(void) handleImage: (UIButton *) img fromURL: (NSString *) url;
-(void) updateImage: (NSString *) surl;
-(void) blah;
+(ResourceDownloader *) getInstance;
@end
