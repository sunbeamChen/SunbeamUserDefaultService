//
//  SUDUserDefault.m
//  Pods
//
//  Created by sunbeam on 2016/12/30.
//
//

#import "SUDUserDefault.h"

@interface SUDUserDefault()

@property (nonatomic, copy) NSString* appIdentifier;

@property (nonatomic, strong) NSMutableDictionary* SUDUserDefaultStore;

@end

@implementation SUDUserDefault

/**
 *  单例
 */
+ (SUDUserDefault *) sharedSUDUserDefault
{
    static SUDUserDefault *sharedInstance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (instancetype)init
{
    if (self = [super init]) {
        [self initSUDUserDefaultStore];
#ifdef DEBUG
        NSLog(@"\n======================\nsunbeam userDefault service(https://github.com/sunbeamChen/SunbeamUserDefaultService) version is %@\n======================", SUNBEAM_USER_DEFAULTS_SERVICE_VERSION);
#endif
    }
    
    return self;
}

- (void) initSUDUserDefaultStore
{
    _appIdentifier = [self getAppName];
    
    NSDictionary* SUDData = [[NSUserDefaults standardUserDefaults] objectForKey:_appIdentifier];
    if (SUDData == nil) {
        return;
    }
    
    _SUDUserDefaultStore = [NSMutableDictionary dictionaryWithDictionary:SUDData];
}

- (BOOL)setUserDefault:(id)object identifier:(NSString *)identifier
{
    if (identifier == nil || [@"" isEqualToString:identifier]) {
        return NO;
    }
    
    if (_SUDUserDefaultStore == nil) {
        _SUDUserDefaultStore = [[NSMutableDictionary alloc] init];
        if (object != nil) {
            [_SUDUserDefaultStore setObject:object forKey:identifier];
        }
    } else {
        if (object == nil) {
            [_SUDUserDefaultStore removeObjectForKey:identifier];
        } else {
            [_SUDUserDefaultStore setObject:object forKey:identifier];
        }
    }
    [self persisitSherlockAuthKeyStore];
    
    return YES;
}

- (id)getUserDefault:(NSString *)identifier
{
    if (identifier == nil || [@"" isEqualToString:identifier] || _SUDUserDefaultStore == nil) {
        return nil;
    }
    
    return [_SUDUserDefaultStore objectForKey:identifier];
}

- (void) persisitSherlockAuthKeyStore
{
    [[NSUserDefaults standardUserDefaults] setObject:[NSDictionary dictionaryWithDictionary:_SUDUserDefaultStore] forKey:_appIdentifier];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - private method
- (NSString *)getAppName
{
    static NSString *_appName;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        _appName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
        if (!_appName) {
            _appName = [[NSProcessInfo processInfo] processName];
        }
        if (!_appName) {
            _appName = [self uuid];
        }
    });
    
    return _appName;
}

- (NSString *)uuid
{
    CFUUIDRef uuidRef = CFUUIDCreate(NULL);
    CFStringRef uuidStringRef = CFUUIDCreateString(NULL, uuidRef);
    CFRelease(uuidRef);
    NSString *uuidValue = (__bridge_transfer NSString *)uuidStringRef;
    uuidValue = [uuidValue lowercaseString];
    uuidValue = [uuidValue stringByReplacingOccurrencesOfString:@"-" withString:@""];
    
    return uuidValue;
}

@end
