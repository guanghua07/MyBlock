//
//  AppSettings.m
//  MyBlock
//
//  Created by ken on 8/18/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

#import "AppSettings.h"

static AppSettings *shardAppSetting = nil;

@implementation AppSettings

+ (AppSettings *)sharedAppSetting
{
    @synchronized([AppSettings class])
    {
        if (shardAppSetting == nil) {
            shardAppSetting = [[AppSettings alloc] init];
        }
        return shardAppSetting;
    }
}

- (void)getSystemVersion:(getSystem)block
{
    NSString *verison = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    NSLog(@"version = %@",verison);
    block(verison);
}


@end
