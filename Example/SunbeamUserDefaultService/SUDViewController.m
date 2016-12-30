//
//  SUDViewController.m
//  SunbeamUserDefaultService
//
//  Created by sunbeamhome on 12/30/2016.
//  Copyright (c) 2016 sunbeamhome. All rights reserved.
//

#import "SUDViewController.h"
#import <SunbeamUserDefaultService/SunbeamUserDefaultService.h>

@interface SUDViewController ()

@end

@implementation SUDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSLog(@"110的取值：%@", [SUDService getObject:@"111"]);
    
    NSLog(@"112的所有取值：%@", [SUDService getObject:@"112"]);
    NSLog(@"112的UUID111的取值：%@", [SUDService getValue:@"UUID111" identifier:@"112"]);
    NSLog(@"112的UUID112的取值：%@", [SUDService getValue:@"UUID112" identifier:@"112"]);
    NSLog(@"112的UUID113的取值：%@", [SUDService getValue:@"UUID113" identifier:@"112"]);
    
    NSLog(@"113的所有取值：%@", [SUDService getObject:@"113"]);
    
    NSLog(@"113的SERVICE311的所有取值：%@", [SUDService getValue:@"SERVICE311" identifier:@"113"]);
    NSLog(@"113的SERVICE312的所有取值：%@", [SUDService getValue:@"SERVICE312" identifier:@"113"]);
    
    NSLog(@"113的SERVICE311的UUID311取值：%@", [SUDService getValue:@"UUID311" serviceKey:@"SERVICE311" identifier:@"113"]);
    NSLog(@"113的SERVICE311的UUID312取值：%@", [SUDService getValue:@"UUID312" serviceKey:@"SERVICE311" identifier:@"113"]);
    NSLog(@"113的SERVICE311的UUID313取值：%@", [SUDService getValue:@"UUID313" serviceKey:@"SERVICE311" identifier:@"113"]);
    
    NSLog(@"113的SERVICE312的UUID411取值：%@", [SUDService getValue:@"UUID411" serviceKey:@"SERVICE312" identifier:@"113"]);
    NSLog(@"113的SERVICE312的UUID412取值：%@", [SUDService getValue:@"UUID412" serviceKey:@"SERVICE312" identifier:@"113"]);
    NSLog(@"113的SERVICE312的UUID413取值：%@", [SUDService getValue:@"UUID413" serviceKey:@"SERVICE312" identifier:@"113"]);
    
    // 一级存储
    [SUDService setObject:@"hello sunbeam" identifier:@"111"];
    
    // 二级存储
    [SUDService setValue:@"E111111" key:@"UUID111" identifier:@"112"];
    [SUDService setValue:@"E111112" key:@"UUID112" identifier:@"112"];
    [SUDService setValue:@"E111113" key:@"UUID113" identifier:@"112"];
    
    // 三级存储
    [SUDService setValue:@"F111111" key:@"UUID311" serviceKey:@"SERVICE311" identifier:@"113"];
    [SUDService setValue:@"F111112" key:@"UUID312" serviceKey:@"SERVICE311" identifier:@"113"];
    [SUDService setValue:@"F111113" key:@"UUID313" serviceKey:@"SERVICE311" identifier:@"113"];
    
    [SUDService setValue:@"G111111" key:@"UUID411" serviceKey:@"SERVICE312" identifier:@"113"];
    [SUDService setValue:@"G111112" key:@"UUID412" serviceKey:@"SERVICE312" identifier:@"113"];
    [SUDService setValue:@"G111113" key:@"UUID413" serviceKey:@"SERVICE312" identifier:@"113"];
    
    NSLog(@"110的取值：%@", [SUDService getObject:@"111"]);
    
    NSLog(@"112的所有取值：%@", [SUDService getObject:@"112"]);
    NSLog(@"112的UUID111的取值：%@", [SUDService getValue:@"UUID111" identifier:@"112"]);
    NSLog(@"112的UUID112的取值：%@", [SUDService getValue:@"UUID112" identifier:@"112"]);
    NSLog(@"112的UUID113的取值：%@", [SUDService getValue:@"UUID113" identifier:@"112"]);
    
    NSLog(@"113的所有取值：%@", [SUDService getObject:@"113"]);
    
    NSLog(@"113的SERVICE311的所有取值：%@", [SUDService getValue:@"SERVICE311" identifier:@"113"]);
    NSLog(@"113的SERVICE312的所有取值：%@", [SUDService getValue:@"SERVICE312" identifier:@"113"]);
    
    NSLog(@"113的SERVICE311的UUID311取值：%@", [SUDService getValue:@"UUID311" serviceKey:@"SERVICE311" identifier:@"113"]);
    NSLog(@"113的SERVICE311的UUID312取值：%@", [SUDService getValue:@"UUID312" serviceKey:@"SERVICE311" identifier:@"113"]);
    NSLog(@"113的SERVICE311的UUID313取值：%@", [SUDService getValue:@"UUID313" serviceKey:@"SERVICE311" identifier:@"113"]);
    
    NSLog(@"113的SERVICE312的UUID411取值：%@", [SUDService getValue:@"UUID411" serviceKey:@"SERVICE312" identifier:@"113"]);
    NSLog(@"113的SERVICE312的UUID412取值：%@", [SUDService getValue:@"UUID412" serviceKey:@"SERVICE312" identifier:@"113"]);
    NSLog(@"113的SERVICE312的UUID413取值：%@", [SUDService getValue:@"UUID413" serviceKey:@"SERVICE312" identifier:@"113"]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
