//
//  ViewController.m
//  MyBlock
//
//  Created by ken on 8/18/15.
//  Copyright (c) 2015 Ken. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[AppSettings sharedAppSetting] getSystemVersion:^(NSString *version) {
        NSLog(@"version = %@",version);
    }];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
