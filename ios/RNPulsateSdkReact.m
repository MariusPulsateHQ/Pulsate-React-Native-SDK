#import "RNPulsateSdkReact.h"
#import <PULPulsate/PULPulsate.h>

@implementation RNPulsateSdkReact

RCT_EXPORT_MODULE();

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(setAuthData:(NSString *)appid appkey:(NSString *)appkey gcmid:(NSString *)gcmid)
{
    PULAuthorizationData* authData = [[PULAuthorizationData alloc] initWithAppId:appid andAppKey:appkey validationError:nil];
    PULPulsateManager* manager = [PULPulsateFactory getInstanceWithAuthorizationData:authData withLocationEnabled:YES withPushEnabled:YES withLaunchOptions:nil withPulsateAppDelegate:YES andPulsateNotificationDelegate:YES error:nil];
}

RCT_EXPORT_METHOD(startPulsateSession:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    __block BOOL wasCalled = NO;
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager startPulsateSession:^(BOOL success, NSError * _Nullable error) {
        if (success) {
            if (wasCalled == NO) {
                successCallback(@"SUCCESS");
                wasCalled = YES;
            }
        } else {
            if (wasCalled == NO) {
                errorCallback(@"ERROR");
                wasCalled = YES;
            }
        }
    }];
}

RCT_EXPORT_METHOD(startPulsateSessionForAlias:(NSString*)alias onSuccess:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    __block BOOL wasCalled = NO;
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager startPulsateSessionForAlias:alias withListener:^(BOOL success, NSError * _Nullable error) {
        if (success) {
            if (wasCalled == NO) {
                successCallback(@"SUCCESS");
                wasCalled = YES;
            }
        } else {
            if (wasCalled == NO) {
                errorCallback(@"ERROR");
                wasCalled = YES;
            }
        }
    }];
}

RCT_EXPORT_METHOD(logoutCurrentAlias:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    __block BOOL wasCalled = NO;
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager logout:^(BOOL success, NSError * _Nullable error) {
        if (success) {
            if (wasCalled == NO) {
                successCallback(@"SUCCESS");
                wasCalled = YES;
            }
        } else {
            if (wasCalled == NO) {
                errorCallback(@"ERROR");
                wasCalled = YES;
            }
        }
    }];
}

RCT_EXPORT_METHOD(setNewThreadButtonEnabled:(BOOL)buttonEnabled)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager setNewThreadButtonEnabled:buttonEnabled];
}

RCT_EXPORT_METHOD(sendLocationWithBeaconEvents:(BOOL)sendLocation)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager sendLocationWithBeaconEvents:sendLocation];
}

RCT_EXPORT_METHOD(setLocationUpdatesEnabled:(BOOL)enabled)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager setLocationUpdatesEnabled:enabled];
}

RCT_EXPORT_METHOD(setSmallInAppNotificationDuration:(NSInteger)duration)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager setSmallInAppNotificationDuration:duration];
}

RCT_EXPORT_METHOD(setInAppNotificationEnabled:(BOOL)enabled)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager enableInAppNotification:enabled];
}

RCT_EXPORT_METHOD(showLastInAppNotification)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager showLastInAppNotification];
}

RCT_EXPORT_METHOD(setPushNotificationEnabled:(BOOL)enabled)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager setPushNotificationEnabled:enabled];
}

RCT_EXPORT_METHOD(isPushNotificationEnabled:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    __block BOOL wasCalled = NO;
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    if ([manager isPushNotificationEnabled]) {
        if (wasCalled == NO) {
            successCallback(@"SUCCESS");
            wasCalled = YES;
        }
    } else {
        if (wasCalled == NO) {
            errorCallback(@"ERROR");
            wasCalled = YES;
        }
    }
}

RCT_EXPORT_METHOD(setUserAuthorized:(BOOL)authorized)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager setUserAuthorized:authorized];
}

RCT_EXPORT_METHOD(showLastUnauthorizedMessage)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager showLastUnauthorizedMessage];
}

RCT_EXPORT_METHOD(updateFirstName:(NSString*)firstName)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager updateFirstName:firstName];
}

RCT_EXPORT_METHOD(updateLastName:(NSString*)lastName)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager updateLastName:lastName];
}

RCT_EXPORT_METHOD(updateEmail:(NSString*)email)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager updateEmail:email];
}

RCT_EXPORT_METHOD(updateGender:(NSInteger)gender)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager updateGender:gender];
}

RCT_EXPORT_METHOD(updateAge:(NSString*)age)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager updateAge:[age intValue]];
}

RCT_EXPORT_METHOD(setPrivacy:(NSInteger)privacy)
{
    if (privacy == 1) {
        privacy = 0;
    } else {
        privacy = 1;
    }
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager setPrivacy:privacy];
}

RCT_EXPORT_METHOD(createAttributeWithString:(NSString*)attributeName value:(NSString *)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager createAttribute:attributeName withString:value];
}

RCT_EXPORT_METHOD(createAttributeWithFloat:(NSString*)attributeName value:(CGFloat)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager createAttribute:attributeName withFloat:value];
}

RCT_EXPORT_METHOD(createAttributeWithInt:(NSString*)attributeName value:(NSInteger)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager createAttribute:attributeName withInteger:value];
}

RCT_EXPORT_METHOD(createAttributeWithBool:(NSString*)attributeName value:(BOOL)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager createAttribute:attributeName withBoolean:value];
}

RCT_EXPORT_METHOD(createAttributeWithDate:(NSString*)attributeName value:(NSDate*)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager createAttribute:attributeName withDate:value];
}

RCT_EXPORT_METHOD(incrementCounter:(NSString*)counterName withInteger:(NSInteger)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager incrementIntegerAttribute:counterName withInteger:value];
}

RCT_EXPORT_METHOD(decrementCounter:(NSString*)counterName withInteger:(NSInteger)value)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager decrementIntegerAttribute:counterName withInteger:value];
}

RCT_EXPORT_METHOD(createEvent:(NSString*)eventName)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager createEvent:eventName];
}

RCT_EXPORT_METHOD(forceAttributeSync)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager forceAttributeSync];
}

RCT_EXPORT_METHOD(showFeed)
{
    dispatch_async(dispatch_get_main_queue(), ^{
        PULPulsateManager* man = [PULPulsateFactory getDefaultInstance];
        UINavigationController* controller = [man getFeedNavigationController];
        [[[UIApplication sharedApplication] delegate].window.rootViewController presentViewController:controller animated:NO completion:nil];
    });
}

RCT_EXPORT_METHOD(useInitialsForUserAvatar:(BOOL)useInitials)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager useInitialsForUserAvatar:useInitials];
}

RCT_EXPORT_METHOD(setOnInboxRightButtonClickListenerAndroid)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(removeOnInboxRightButtonClickListenerAndroid)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setUserUnauthorizedListenerAndroid)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(setUnreadCountUpdateListenerAndroid)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(showNetworkAndroid)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
}

RCT_EXPORT_METHOD(isUserAuthorizedIOS:(RCTResponseSenderBlock)successCallback onError: (RCTResponseSenderBlock)errorCallback)
{
    __block BOOL wasCalled = NO;
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    if ([manager isUserAuthorized]) {
        if (wasCalled == NO) {
            successCallback(@"SUCCESS");
            wasCalled = YES;
        }
    } else {
        if (wasCalled == NO) {
            errorCallback(@"ERROR");
            wasCalled = YES;
        }
    }
}

RCT_EXPORT_METHOD(getDeviceGuidIOS:(RCTResponseSenderBlock)successCallback)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    successCallback([manager getDeviceGuid]);
}

RCT_EXPORT_METHOD(startLocationIOS)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager startLocation];
}

RCT_EXPORT_METHOD(startRemoteNotificationsIOS)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager startRemoteNotifications];
}

RCT_EXPORT_METHOD(getBadgeCountIOS)
{
    PULPulsateManager* manager = [PULPulsateFactory getDefaultInstance];
    [manager getBadgeCount];
}
@end
