/**
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @generated by codegen project: GenerateModuleObjCpp
 *
 * We create an umbrella header (and corresponding implementation) here since
 * Cxx compilation in BUCK has a limitation: source-code producing genrule()s
 * must have a single output. More files => more genrule()s => slower builds.
 */

#import "TurboClipboardSpec.h"


namespace facebook {
  namespace react {
    
    static facebook::jsi::Value __hostFunction_TurboClipboardSpecJSI_getString(facebook::jsi::Runtime& rt, TurboModule &turboModule, const facebook::jsi::Value* args, size_t count) {
      return static_cast<ObjCTurboModule&>(turboModule).invokeObjCMethod(rt, PromiseKind, "getString", @selector(getString:reject:), args, count);
    }

    static facebook::jsi::Value __hostFunction_TurboClipboardSpecJSI_setString(facebook::jsi::Runtime& rt, TurboModule &turboModule, const facebook::jsi::Value* args, size_t count) {
      return static_cast<ObjCTurboModule&>(turboModule).invokeObjCMethod(rt, VoidKind, "setString", @selector(setString:), args, count);
    }

    TurboClipboardSpecJSI::TurboClipboardSpecJSI(const ObjCTurboModule::InitParams &params)
      : ObjCTurboModule(params) {
        
        methodMap_["getString"] = MethodMetadata {0, __hostFunction_TurboClipboardSpecJSI_getString};
        
        
        methodMap_["setString"] = MethodMetadata {1, __hostFunction_TurboClipboardSpecJSI_setString};
        
    }
  } // namespace react
} // namespace facebook
