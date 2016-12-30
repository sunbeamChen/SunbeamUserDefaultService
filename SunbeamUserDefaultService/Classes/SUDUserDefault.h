//
//  SUDUserDefault.h
//  Pods
//
//  Created by sunbeam on 2016/12/30.
//
//

#import <Foundation/Foundation.h>

@interface SUDUserDefault : NSObject

/**
 *  单例
 */
+ (SUDUserDefault *) sharedSUDUserDefault;

/**
 存储

 @param Object NSString, NSData, NSNumber, NSDate, NSArray, and NSDictionary
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
