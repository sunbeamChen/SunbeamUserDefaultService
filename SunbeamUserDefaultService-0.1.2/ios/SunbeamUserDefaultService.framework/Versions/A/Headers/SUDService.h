//
//  SUDService.h
//  Pods
//
//  Created by sunbeam on 2016/12/30.
//
//

#import <Foundation/Foundation.h>

/**
 identifier用以标识不同的命名空间
 eg:同一应用不同用户的相关信息
 
 Key-Value Store: NSUserDefaults stores Property List objects (NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary) identified by NSString keys, similar to an NSMutableDictionary.
 */
@interface SUDService : NSObject

#pragma mark - 一级存储
/**
 存储{"identifier":object}

 @param object NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 @param identifier NSString key
 @return YES/NO
 */
+ (BOOL) setObject:(id) object identifier:(NSString *) identifier;

/**
 获取 object
 
 @param identifier NSString key
 @return NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 */
+ (id) getObject:(NSString *) identifier;

#pragma mark - 二级存储
/**
 存储 {"identifier":{"key":value}}

 @param value NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 @param key NSString key
 @param identifier NSString key
 @return YES/NO
 */
+ (BOOL) setValue:(id) value key:(NSString *) key identifier:(NSString *) identifier;

/**
 获取 value
 
 @param key NSString key
 @param identifier NSString key
 @return NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 */
+ (id) getValue:(NSString *) key identifier:(NSString *) identifier;

#pragma mark - 三级存储
/**
 存储 {"identifier":{"serviceKey":{"key":value}}}

 @param value NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 @param key NSString key
 @param serviceKey NSString key
 @param identifier NSString key
 @return YES/NO
 */
+ (BOOL) setValue:(id) value key:(NSString *) key serviceKey:(NSString *) serviceKey identifier:(NSString *) identifier;

/**
 获取value

 @param key NSString key
 @param serviceKey NSString key
 @param identifier NSString key
 @return NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
 */
+ (id) getValue:(NSString *) key serviceKey:(NSString *) serviceKey identifier:(NSString *) identifier;

@end
