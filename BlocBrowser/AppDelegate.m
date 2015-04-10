//
//  AppDelegate.m
//  BlocBrowser
//
//  Created by Humberto Carvalho on 06/03/15.
//  Copyright (c) 2015 Bloc. All rights reserved.
//

#import "AppDelegate.h"
#import "WebBrowserViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor lightGrayColor];
    // The app windows are expected to have a root view controller at the end app windows launch.
    // Without the next code, the app gives the above message.
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[WebBrowserViewController alloc] init]];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    //
    // Clearing browsrt history ... HC -----------------------------------------------
    //
    UINavigationController *navigationVC = (UINavigationController *)self.window.rootViewController;
    WebBrowserViewController *browserVC = [[navigationVC viewControllers] firstObject];
    [browserVC resetWebView];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Welcome!", @"Welcome title")
            message:NSLocalizedString(@"Get excited to use the best web browser ever!", @"Welcome comment")
            delegate:nil
            cancelButtonTitle:NSLocalizedString(@"OK, I'm excited!", @"Welcome button title")otherButtonTitles:nil];
    [alert show];
    
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
