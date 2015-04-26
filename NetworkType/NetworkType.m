//
//  NetworkType.m
//  NetworkType
//
//  Created by Massimo Polimeni on 26/04/15.
//  Copyright (c) 2015 Massimo Polimeni. All rights reserved.
//

#import "NetworkType.h"
#import <CFNetwork/CFNetwork.h>
#import <UIKit/UIKit.h>


@implementation NetworkType

+ (NSString*) checkNetworkType
{
    NSArray *subviews = [[[[UIApplication sharedApplication] valueForKey:@"statusBar"] valueForKey:@"foregroundView"]subviews];
    NSNumber *dataNetworkItemView = nil;
    
    for (id subview in subviews)
    {
        if([subview isKindOfClass:[NSClassFromString(@"UIStatusBarDataNetworkItemView") class]])
        {
            dataNetworkItemView = subview;
            break;
        }
    }
    
    switch ([[dataNetworkItemView valueForKey:@"dataNetworkType"]integerValue])
    {
        case 0: default:
        {
            return @"Unknown";
            break;
        }
        case 1:
        {
            return @"2G";
            break;
        }
        case 2:
        {
            return @"3G";
            break;
        }
        case 3:
        {
            return @"4G";
            break;
        }
        case 4:
        {
            return @"LTE";
            break;
        }
        case 5:
        {
            return @"Wifi";
            break;
        }
    }
}

@end
