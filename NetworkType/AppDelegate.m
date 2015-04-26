//
//  AppDelegate.m
//  NetworkType
//
//  Created by Massimo Polimeni on 26/04/15.
//  Copyright (c) 2015 Massimo Polimeni. All rights reserved.
//

#import "AppDelegate.h"
#import "NetworkType.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"Your actual network type: %@", [NetworkType checkNetworkType]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
