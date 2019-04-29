package com.reactlibrary;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.modules.core.DeviceEventManagerModule;
import com.pulsatehq.external.pulsate.factory.PulsateFactory;
import com.pulsatehq.external.pulsate.listener.IPulsateRequestListener;
import com.pulsatehq.external.pulsate.listener.IPulsateUnreadCountUpdateListener;
import com.pulsatehq.external.pulsate.listener.IPulsateUserUnauthorizedListener;
import com.pulsatehq.external.pulsate.manager.IPulsateManager;
import com.pulsatehq.internal.util.AuthorizationData;
import com.pulsatehq.internal.debug.PulsateDebugManager;

import android.view.View;
import java.util.Date;
import java.util.List;

public class RNPulsateSdkReactModule extends ReactContextBaseJavaModule {
    private final ReactApplicationContext reactContext;

    public RNPulsateSdkReactModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNPulsateSdkReact";
    }
    
    @ReactMethod
    public void setAuthData(String appid, String appkey) {
        PulsateFactory.getInstance(new AuthorizationData(appid, appkey));
    }

    @ReactMethod
    public void startPulsateSession(Callback successCallback, Callback errorCallback) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        final boolean[] wasCalled = {false};
        pulsateManager.startPulsateSession(new IPulsateRequestListener() {
            @Override
            public void onSucess() {
                if (!wasCalled[0]) {
                    wasCalled[0] = true;
                    successCallback.invoke("Successfully started session");
                }
            }

            @Override
            public void onError(Throwable e) {
                if (!wasCalled[0]) {
                    wasCalled[0] = true;
                    errorCallback.invoke(e.getMessage());
                }  
            }
        });
    }

    @ReactMethod
    public void startPulsateSessionForAlias(String alias, Callback successCallback, Callback errorCallback) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        final boolean[] wasCalled = {false};
        pulsateManager.startPulsateSessionForAlias(alias, new IPulsateRequestListener() {
            @Override
            public void onSucess() {
                if (!wasCalled[0]) {
                    wasCalled[0] = true;
                    successCallback.invoke("Successfully started session");
                }
            }

            @Override
            public void onError(Throwable e) {
                if (!wasCalled[0]) {
                    wasCalled[0] = true;
                    errorCallback.invoke(e.getMessage());
                }  
            }
        });
    }

    @ReactMethod
    public void logoutCurrentAlias(Callback successCallback, Callback errorCallback) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        final boolean[] wasCalled = {false};
        pulsateManager.logoutCurrentAlias(new IPulsateRequestListener() {
            @Override
            public void onSucess() {
                if (!wasCalled[0]) {
                    wasCalled[0] = true;
                    successCallback.invoke("Successfully logged out");
                }
            }

            @Override
            public void onError(Throwable e) {
                if (!wasCalled[0]) {
                    wasCalled[0] = true;
                    errorCallback.invoke(e.getMessage());
                }  
            }
        });
    }

    @ReactMethod
    public void setNewThreadButtonEnabled(boolean buttonEnabled) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setNewThreadButtonEnabled(buttonEnabled);
    }

    @ReactMethod
    public void sendLocationWithBeaconEvents(boolean sendLocation) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.sendLocationWithBeaconEvents(sendLocation);
    }
    
    @ReactMethod
    public void setLocationUpdatesEnabled(boolean enabled) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setLocationUpdatesEnabled(enabled);
    }
    
    @ReactMethod
    void setSmallInAppNotificationDuration(int duration) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setSmallInAppNotificationDuration(duration);
    }

    @ReactMethod
    void setInAppNotificationEnabled(boolean enabled) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setInAppNotificationEnabled(enabled);
    }

    @ReactMethod
    void showLastInAppNotification() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.showLastInAppNotification();
    }

    @ReactMethod
    void setPushNotificationEnabled(boolean enabled) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setPushNotificationEnabled(enabled);
    }

    @ReactMethod
    void isPushNotificationEnabled(Callback successCallback, Callback errorCallback) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        final boolean[] wasCalled = {false};
        if (pulsateManager.isPushNotificationEnabled()) {
            if (!wasCalled[0]) {
                wasCalled[0] = true;
                successCallback.invoke("ENABLED");
            }
        } else {
            if (!wasCalled[0]) {
                wasCalled[0] = true;
                errorCallback.invoke("DISABLED");
            }
        }
    }

    @ReactMethod
    public void setUserAuthorized(boolean authorized) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setUserAuthorized(authorized);
    }

    @ReactMethod
    public void showLastUnauthorizedMessage() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.showLastUnauthorizedMessage();
    }

    @ReactMethod
    public void updateFirstName(String firstName) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.updateFirstName(firstName);
    }

    @ReactMethod
    public void updateLastName(String lastName) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.updateLastName(lastName);
    }

    @ReactMethod
    public void updateEmail(String email) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.updateEmail(email);
    }

    @ReactMethod
    public void updateGender(int gender) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.updateGender(gender);
    }

    @ReactMethod
    public void updateAge(String age) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.updateAge(age);
    }

    @ReactMethod
    public void setPrivacy(int privacy) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setPrivacy(privacy);
    }

    @ReactMethod
    public void createAttributeWithString(String attributeName, String value) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithFloat(String attributeName, float value) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithInt(String attributeName, int value) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithBool(String attributeName, boolean value) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createAttributeWithDate(String attributeName, Date value) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.createAttribute(attributeName, value);
    }

    @ReactMethod
    public void createEvent(String event) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.createEvent(event);
    }

    @ReactMethod
    public void incrementCounter(String counterName, int value) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.incrementCounter(counterName, value);
    }

    @ReactMethod
    public void decrementCounter(String counterName, int value) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.decrementCounter(counterName, value);
    }

    @ReactMethod
    public void forceAttributeSync() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.forceAttributeSync();
    }

    @ReactMethod
    public void showFeed() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.showFeed();
    }

    @ReactMethod
    public void useInitialsForUserAvatar(boolean useInitials) {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.useInitialsForUserAvatar(useInitials);
    }


    private void sendEvent(ReactContext reactContext, String eventName, WritableMap params) {
        reactContext
            .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
            .emit(eventName, params);
    }
  
    @ReactMethod
    public void setOnInboxRightButtonClickListenerAndroid() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setOnInboxRightButtonClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                onRightButtonClicked();
            }
        });
    }

    private void onRightButtonClicked() {
        WritableMap eventMap = Arguments.createMap();
        eventMap.putString("type", "onRightButtonClicked");
        sendEvent(getReactApplicationContext(), "onRightButtonClicked", eventMap);
    }

    @ReactMethod
    public void removeOnInboxRightButtonClickListenerAndroid() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setOnInboxRightButtonClickListener(null);
    }

    @ReactMethod
    public void setUserUnauthorizedListenerAndroid() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        pulsateManager.setUserUnauthorizedListener(new IPulsateUserUnauthorizedListener() {
            @Override
            public void onUnauthorizedAction() {
                unauthorizedAction();
            }
        });
    }

    private void unauthorizedAction() {
        WritableMap eventMap = Arguments.createMap();
        eventMap.putString("type", "onUnauthorizedAction");
        sendEvent(getReactApplicationContext(), "onUnauthorizedAction", eventMap);
    }

    @ReactMethod
    public void setUnreadCountUpdateListenerAndroid() {
        IPulsateManager pulsateManager = PulsateFactory.getInstance();
        final boolean[] wasCalled = {false};
        pulsateManager.setUnreadCountUpdateListener(new IPulsateUnreadCountUpdateListener() {
            @Override
            public void onUnreadCountUpdate(int unread) {
                unreadCountUpdate(unread);
            }
        });
    }

    private void unreadCountUpdate(int unread) {
        WritableMap eventMap = Arguments.createMap();
        eventMap.putString("type", "onUnreadCountUpdate");
        eventMap.putInt("unread", unread);
        sendEvent(getReactApplicationContext(), "onUnreadCountUpdate", eventMap);
    }

    @ReactMethod
    public void showNetworkAndroid() {
        PulsateDebugManager.getInstance().showNetwork();
    }


    @ReactMethod
    public void isUserAuthorizedIOS(Callback successCallback, Callback errorCallback) {
    }

    @ReactMethod
    public void getDeviceGuidIOS(Callback successCallback) {
    }

    @ReactMethod
    public void startLocationIOS() {
    }

    @ReactMethod
    public void startRemoteNotificationsIOS() {
    }

    @ReactMethod
    public void getBadgeCountIOS() {
    }
}