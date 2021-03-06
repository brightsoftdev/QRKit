//
//  QRKitAppDelegate.m
//  QRKit
//
//  Created by  on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "QRKitAppDelegate.h"
#import "QRKitViewController.h"
#import "OOCLTabBarController.h"

@implementation QRKitAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;
@synthesize tabBarController = _tabBarController;

- (void)dealloc
{
    [_tabBarController release];
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [application setStatusBarHidden:NO];
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        self.viewController = [[[QRKitViewController alloc] initWithNibName:@"QRKitViewController_iPhone" bundle:nil] autorelease];
    } else {
        self.viewController = [[[QRKitViewController alloc] initWithNibName:@"QRKitViewController_iPad" bundle:nil] autorelease];
    }
    
    _tabBarController = [[OOCLTabBarController alloc] initWithConfig:@"TabBarConfig"];
    _tabBarController.delegate = self;
    _tabBarController.selectedIndex = 1;
    _tabBarController.canRotation = NO;
    [_tabBarController buildUITabBarController];
    
    self.window.rootViewController = _tabBarController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
