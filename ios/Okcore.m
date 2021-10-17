#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Okcore, NSObject)

RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
                 withResolver:(RCTPromiseResolveBlock)resolve
                 withRejecter:(RCTPromiseRejectBlock)reject)

RCT_EXTERN_METHOD(isLocationServicesEnabled: (RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)

@end
