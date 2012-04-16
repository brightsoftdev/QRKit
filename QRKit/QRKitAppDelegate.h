//
//  QRKitAppDelegate.h
//  QRKit
//
//  Created by  on 4/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class QRKitViewController;
@class OOCLTabBarController;

@interface QRKitAppDelegate : UIResponder <UIApplicationDelegate,UITabBarControllerDelegate,UINavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) QRKitViewController *viewController;

@property (nonatomic,retain) OOCLTabBarController *tabBarController;

@end
