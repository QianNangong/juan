//
//  SafariViewController.m
//  juan Watch App
//
//  Created by 刻晴 on 2022/10/26.
//

#import "SafariViewController.h"
#import <dlfcn.h>

@implementation SafariViewController

+ (void)initialize {
    [super initialize];
    dlopen("/System/Frameworks/SafariServices.framework/SafariServices", RTLD_NOW);
}

- (instancetype)initWithURL:(NSString *)url {
    Class SFSafariViewController = NSClassFromString(@"SFSafariViewController");
    self = [[SFSafariViewController alloc] initWithURL:[NSURL URLWithString:url]];
    return self;
}

@end
