//
//  PrivateClasses.h
//  juan
//
//  Created by 刻晴 on 2022/10/26.
//

#import <Foundation/Foundation.h>

@interface UIViewController : NSObject

- (void)presentViewController:(UIViewController *)viewControllerToPresent animated:(BOOL)flag completion:(void (^)(void))completion;

@end

@interface UIWindow : NSObject

- (UIViewController *)rootViewController;

@end

@protocol UIApplicationDelegate <NSObject>

@property UIWindow *window;

@end

@interface UIApplication : NSObject

+ (UIApplication *)sharedApplication;
- (id<UIApplicationDelegate>)delegate;

@end
