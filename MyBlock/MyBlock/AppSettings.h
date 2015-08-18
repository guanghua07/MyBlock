//
//  AppSettings.h
//  MyBlock
//
//  Created by ken on 8/18/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^getSystem)(NSString *version);


@interface AppSettings : NSObject

+ (AppSettings *)sharedAppSetting;

- (void)getSystemVersion:(getSystem)block;

@end
