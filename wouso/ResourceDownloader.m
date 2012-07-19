#import "ResourceDownloader.h"

@implementation ResourceDownloader

static NSMutableDictionary *dictionary, *waiting;
static ResourceDownloader *i;

+(ResourceDownloader *) getInstance
{
    if(i==nil) i = [[ResourceDownloader alloc] init];
    return i;
}

- (id) init
{
    id ret = [super init];
    if(ret == nil)
        return nil;
    [NSThread detachNewThreadSelector:@selector(blah) toTarget:self withObject:nil];
    return  ret;
}

- (void) handleImage: (UIButton *) img fromURL: (NSString *) url
{
    if(dictionary == nil) 
        dictionary = [[NSMutableDictionary alloc] init];
    if(waiting == nil)
        waiting = [[NSMutableDictionary alloc] init];
    UIImage *image = [dictionary objectForKey:url];
    if(image != nil) {
        [img setImage: image forState:UIControlStateNormal];
        return;
    }
    [waiting setValue:img forKey:url];
                          
}

- (void) updateImage: (NSString *) surl
{
    UIButton *img = [waiting objectForKey:surl];
    img.contentHorizontalAlignment = UIControlContentHorizontalAlignmentFill;
    img.contentVerticalAlignment = UIControlContentVerticalAlignmentFill;
    [img setImage: [dictionary objectForKey:surl] forState:UIControlStateNormal];
}

- (void) blah
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    BOOL running = YES;
    while(running) {
        NSEnumerator *em = [waiting keyEnumerator];
        [em retain];
        for(NSString *surl in em) {
            NSURL *url = [NSURL URLWithString: surl];
            UIImage *image = [UIImage imageWithData: [NSData dataWithContentsOfURL:url]];  
            [image retain];
            [dictionary setValue:image forKey:surl];
            [self performSelectorOnMainThread:@selector(updateImage:) withObject:surl waitUntilDone:YES];
            [waiting removeObjectForKey:surl];
            
        }     
        [em release];
        [NSThread sleepForTimeInterval:1];
    }
    [pool drain];
}

@end
