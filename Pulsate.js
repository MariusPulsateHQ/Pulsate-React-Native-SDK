/**
 * @providesModule Pulsate
 */
// @flow

import { NativeModules, Platform } from 'react-native';
const RNPulsateSdkReact = NativeModules.RNPulsateSdkReact;

export const Pulsate = {
    setAuthData: function (appid: string, appkey: string, gcmid: string) {
        RNPulsateSdkReact.setAuthData(appid, appkey, gcmid);
    },
    startPulsateSession: function (successCallback: () => string, errorCallback: () => string) {
        RNPulsateSdkReact.startPulsateSession(successCallback, errorCallback);
    },
    startPulsateSessionForAlias: function (alias: string, successCallback: () => string, errorCallback: () => string) {
        RNPulsateSdkReact.startPulsateSessionForAlias(alias, successCallback, errorCallback);
    },
    logoutCurrentAlias: function (successCallback: () => string, errorCallback: () => string) {
        RNPulsateSdkReact.logoutCurrentAlias(successCallback, errorCallback);
    },
    setNewThreadButtonEnabled: function (buttonEnabled: boolean) {
        RNPulsateSdkReact.setNewThreadButtonEnabled(buttonEnabled);
    },
    sendLocationWithBeaconEvents: function (sendLocation: boolean) {
        RNPulsateSdkReact.sendLocationWithBeaconEvents(sendLocation);
    },
    setLocationUpdatesEnabled: function (enabled: boolean) {
        RNPulsateSdkReact.setLocationUpdatesEnabled(enabled);
    },
    setInAppNotificationEnabled: function (enabled: boolean) {
        RNPulsateSdkReact.setInAppNotificationEnabled(enabled);
    },
    showLastInAppNotification: function () {
        RNPulsateSdkReact.showLastInAppNotification();
    },
    setPushNotificationEnabled: function (enabled: boolean) {
        RNPulsateSdkReact.setPushNotificationEnabled(enabled);
    },
    isPushNotificationEnabled: function (successCallback: () => string, errorCallback: () => string) {
        RNPulsateSdkReact.isPushNotificationEnabled(successCallback, errorCallback);   
    },
    setUserAuthorized: function (authorized: boolean) {
        RNPulsateSdkReact.setUserAuthorized(authorized); 
    },
    showLastUnauthorizedMessage: function () {
        RNPulsateSdkReact.showLastUnauthorizedMessage();
    },
    updateFirstName: function (firstName: string) {
        RNPulsateSdkReact.updateFirstName(firstName);
    },
    updateLastName: function (lastName: string) {
        RNPulsateSdkReact.updateLastName(lastName);
    },
    updateEmail: function (email: string) {
        RNPulsateSdkReact.updateEmail(email);
    },
    updateGender: function (gender: integer) {
        RNPulsateSdkReact.updateGender(gender);
    },
    updateAge: function (age: string) {
        RNPulsateSdkReact.updateAge(age);
    },
    setPrivacy: function (privacy: integer) {
        RNPulsateSdkReact.setPrivacy(privacy);
    },
    createAttributeWithString: function (attributeName: string, value: string) {
        RNPulsateSdkReact.createAttributeWithString(attributeName, value);
    },
    createAttributeWithFloat: function (attributeName: string, value: float) {
        RNPulsateSdkReact.createAttributeWithFloat(attributeName, value);
    },
    createAttributeWithInt: function (attributeName: string, value: integer) {
        RNPulsateSdkReact.createAttributeWithInt(attributeName, value);
    },
    createAttributeWithBool: function (attributeName: string, value: boolean) {
        RNPulsateSdkReact.createAttributeWithBool(attributeName, value);   
    },
    createAttributeWithDate: function (attributeName: string, value: Date) {
        RNPulsateSdkReact.createAttributeWithDate(attributeName, value);  
    },
    incrementCounter: function (counterName: string, value: integer) {
        RNPulsateSdkReact.incrementCounter(counterName, value);
    },
    decrementCounter: function (counterName: string, value: integer) {
        RNPulsateSdkReact.decrementCounter(counterName, value);
    },
    createEvent: function (eventName: string) {
        RNPulsateSdkReact.createEvent(eventName); 
    },
    forceAttributeSync: function () {
        RNPulsateSdkReact.forceAttributeSync();
    },
    showFeed: function () {
        RNPulsateSdkReact.showFeed(); 
    },
    useInitialsForUserAvatar: function (useInitials: boolean) {
        RNPulsateSdkReact.useInitialsForUserAvatar(useInitials);
    },


    setOnInboxRightButtonClickListenerAndroid: function () {
        RNPulsateSdkReact.setOnInboxRightButtonClickListenerAndroid();
    },
    removeOnInboxRightButtonClickListenerAndroid: function () {
        RNPulsateSdkReact.removeOnInboxRightButtonClickListenerAndroid();
    },
    setUserUnauthorizedListenerAndroid: function () {
        RNPulsateSdkReact.setUserUnauthorizedListenerAndroid();
    },
    setUnreadCountUpdateListenerAndroid: function () {
        RNPulsateSdkReact.setUnreadCountUpdateListenerAndroid();
    },
    showNetworkAndroid: function () {
        RNPulsateSdkReact.showNetworkAndroid(); 
    },

    
    isUserAuthorizedIOS: function (successCallback: () => string, errorCallback: () => string) {
        RNPulsateSdkReact.isUserAuthorizedIOS(successCallback, errorCallback);
    },
    getDeviceGuidIOS: function (successCallback: () => string) {
        RNPulsateSdkReact.getDeviceGuidIOS(successCallback);
    },
    startLocationIOS: function () {
        RNPulsateSdkReact.startLocationIOS();
    },
    startRemoteNotificationsIOS: function () {
        RNPulsateSdkReact.startRemoteNotificationsIOS(); 
    },
    getBadgeCountIOS: function () {
        RNPulsateSdkReact.getBadgeCountIOS();   
    },
};