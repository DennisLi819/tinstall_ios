//
//  AppDelegate.m
//  TinstallDemo
//
//  Created by fx on 2021/1/8.
//

#import "AppDelegate.h"
#import <TInstallSDK/TInstallSDK.h>
#import "MainVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [TInstall initInstall:@"10VB57QR"];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [MainVC new];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
