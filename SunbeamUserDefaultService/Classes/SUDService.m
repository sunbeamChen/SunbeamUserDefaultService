//
//  SUDService.m
//  Pods
//
//  Created by sunbeam on 2016/12/30.
//
//

#import "SUDService.h"
#import "SUDUserDefault.h"

@implementation SUDService

+ (BOOL)setObject:(id)object identifier:(NSString *)identifier
{
    return [[SUDUserDefault sharedSUDUserDefault] setUserDefault:object identifier:identifier];
}

+ (id)getObject:(NSString *)identifier
{
    return [[SUDUserDefault sharedSUDUserDefault] getUserDefault:identifier];
}

+ (BOOL)setValue:(id)value key:(NSString *)key identifier:(NSString *)identifier
{
    if (key == nil || [@"" isEqualToString:key]) {
        return NO;
    }
    
    id userDefault = [[SUDUserDefault sharedSUDUserDefault] getUserDefault:identifier];
    if (userDefault == nil) {
        if (value != nil) {
            NSMutableDictionary* userData = [[NSMutableDictionary alloc] init];
            [userData setObject:value forKey:key];
            return [self setObject:userData identifier:identifier];
        }
    } else {
        NSMutableDictionary* userData = [NSMutableDictionary dictionaryWithDictionary:userDefault];
        if (value == nil) {
            [userData removeObjectForKey:key];
        } else {
            [userData setObject:value forKey:key];
        }
        return [self setObject:userData identifier:identifier];
    }
    
    return YES;
}

+ (id)getValue:(NSString *)key identifier:(NSString *)identifier
{
    id userDefault = [self getObject:identifier];
    if (userDefault == nil) {
        return nil;
    }
    
    NSMutableDictionary* userData = [NSMutableDictionary dictionaryWithDictionary:userDefault];
    
    return [userData objectForKey:key];
}

+ (BOOL)setValue:(id)value key:(NSString *)key serviceKey:(NSString *)serviceKey identifier:(NSString *)identifier
{
    if (key == nil || [@"" isEqualToString:key]) {
        return NO;
    }
    
    id userDefault = [self getValue:serviceKey identifier:identifier];
    if (userDefault == nil) {
        if (value != nil) {
            NSMutableDictionary* userData = [[NSMutableDictionary alloc] init];
            [userData setObject:value forKey:key];
            return [self setValue:userData key:serviceKey identifier:identifier];
        }
    } else {
        NSMutableDictionary* userData = [NSMutableDictionary dictionaryWithDictionary:userDefault];
        if (value == nil) {
            [userData removeObjectForKey:key];
        } else {
            [userData setObject:value forKey:key];
        }
        return [self setValue:userData key:serviceKey identifier:identifier];
    }
    
    return YES;
}

+ (id)getValue:(NSString *)key serviceKey:(NSString *)serviceKey identifier:(NSString *)identifier
{
    id userDefault = [self getValue:serviceKey identifier:identifier];
    if (userDefault == nil) {
        return nil;
    }
    
    NSMutableDictionary* userData = [NSMutableDictionary dictionaryWithDictionary:userDefault];
    
    return [userData objectForKey:key];
}

@end
