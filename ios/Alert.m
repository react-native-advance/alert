#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(Alert, NSObject)
// RCT_EXTERN_METHOD(multiply:(float)a withB:(float)b
//                  withResolver:(RCTPromiseResolveBlock)resolve
//                  withRejecter:(RCTPromiseRejectBlock)reject)
RTC_EXTERN_METHOD(showMessage(:(NSString *) title message:(NSString *) message duration:(double *) duration) )
RTC_EXTERN_METHOD(showMessage(:(NSString *) message duration:(double *) duration) )
RTC_EXTERN_METHOD(showMessage(:(NSString *) title message:(NSString *) message )
RTC_EXTERN_METHOD(showMessage(:(NSString *) message)
@end
