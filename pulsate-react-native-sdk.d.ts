/**
* pulsate-react-native-sdk.d.ts
*
* Type definition file for the react native pulsate package
*/

declare module 'pulsate-react-native-sdk' {
    type integer = number;
    type float = number;

    interface PulsateManager {
        Pulsate: {
            setAuthData(appid: string, appkey: string, gcmid: string): void;
            startPulsateSession(successCallback: () => string, errorCallback: () => string): void;
            startPulsateSessionForAlias(alias: string, successCallback: () => string, errorCallback: () => string): void;
            logoutCurrentAlias(successCallback: () => string, errorCallback: () => string): void;
            setNewThreadButtonEnabled(buttonEnabled: boolean): void;
            sendLocationWithBeaconEvents(sendLocation: boolean): void;
            setLocationUpdatesEnabled(enabled: boolean): void;
            setInAppNotificationEnabled(enabled: boolean): void;
            showLastInAppNotification(): void;
            setPushNotificationEnabled(enabled: boolean): void;
            isPushNotificationEnabled(successCallback: () => string, errorCallback: () => string): void;
            setUserAuthorized(authorized: boolean): void;
            showLastUnauthorizedMessage(): void;
            updateFirstName(firstName: string): void;
            updateLastName(lastName: string): void;
            updateEmail(email: string): void;
            updateGender(gender: integer): void;
            updateAge(age: string): void;
            setPrivacy(privacy: integer): void;
            createAttributeWithString(attributeName: string, value: string): void;
            createAttributeWithFloat(attributeName: string, value: float): void;
            createAttributeWithInt(attributeName: string, value: integer): void;
            createAttributeWithBool(attributeName: string, value: boolean): void;
            createAttributeWithDate(attributeName: string, value: Date): void;
            incrementCounter(counterName: string, value: integer): void;
            decrementCounter(counterName: string, value: integer): void;
            createEvent(eventName: string): void;
            forceAttributeSync(): void;
            showFeed(): void;
            useInitialsForUserAvatar(useInitials: boolean): void;
        
            setOnInboxRightButtonClickListenerAndroid(): void;
            removeOnInboxRightButtonClickListenerAndroid(): void;
            setUserUnauthorizedListenerAndroid(): void;
            setUnreadCountUpdateListenerAndroid(): void;
            showNetworkAndroid(): void;
            
            isUserAuthorizedIOS(successCallback: () => string, errorCallback: () => string): void;
            getDeviceGuidIOS(successCallback: () => string): void;
            startLocationIOS(): void;
            startRemoteNotificationsIOS(): void;
            getBadgeCountIOS(): void;
        }        
    }

    var PulsateManager: PulsateManager;
    export = PulsateManager;
}