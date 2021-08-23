#import <TurboClipboard/TurboClipboard.h>

#import <UIKit/UIKit.h>
#import <React/RCTBridge+Private.h>
#import <React/RCTUtils.h>
#import <React/RCTLog.h>
#import "TurboClipboardSpec.h"

using namespace facebook::react;

@interface TurboClipboard () <TurboClipboardSpec>
@end

@implementation TurboClipboard

RCT_EXPORT_MODULE()

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_METHOD(setString : (NSString *)content)
{
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  clipboard.string = (content ?: @"");
}

RCT_EXPORT_METHOD(getString : (RCTPromiseResolveBlock)resolve reject : (__unused RCTPromiseRejectBlock)reject)
{
  UIPasteboard *clipboard = [UIPasteboard generalPasteboard];
  resolve((clipboard.string ?: @""));
}

- (std::shared_ptr<TurboModule>)getTurboModule:(const ObjCTurboModule::InitParams &)params
{
  return std::make_shared<TurboClipboardSpecJSI>(params);
}

@end

Class TurboClipboardCls(void)
{
  return TurboClipboard.class;
}
