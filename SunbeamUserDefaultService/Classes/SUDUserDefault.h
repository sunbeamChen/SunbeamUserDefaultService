//
//  SUDUserDefault.h
//  Pods
//
//  Created by sunbeam on 2016/12/30.
//
//

#import <Foundation/Foundation.h>

#define SUNBEAM_USER_DEFAULTS_SERVICE_VERSION @"0.1.4"

@interface SUDUserDefault : NSObject

/**
 *  单例
 */
+ (SUDUserDefault *) sharedSUDUserDefault;

/**
 存储

 @param object NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 @param identifier NSString key
 */
- (BOOL) setUserDefault:(id) object identifier:(NSString *) identifier;

/**
 获取

 @param identifier NSString key
 @return NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 */
- (id) getUserDefault:(NSString *) identifier;

@end
