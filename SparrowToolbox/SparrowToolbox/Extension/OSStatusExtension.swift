//
//  OSStatusExtension.swift
//  SparrowToolbox
//
//  Created by Roy Sparrow on 2020/10/21.
//  Copyright © 2020 SparrowStudio. All rights reserved.
//

import AVFoundation
import Foundation

extension OSStatus {
    
    var error: NSError? {
        guard !isNoErr else { return nil }
        return NSError(domain: NSOSStatusErrorDomain, code: Int(self), userInfo: [
            NSLocalizedDescriptionKey: detailMessage])
    }
    
    var isNoErr: Bool {
        return self == noErr
    }
    
    // If get "Undefined Error", can search with https://www.osstatus.com/ or Apple Developer Documentation.
    // Another way, can use https://developer.apple.com/documentation/security/1394686-seccopyerrormessagestring to get message, but it doesn't work for all the OSStatus.
    var detailMessage: String {
        switch self {
            
        // No error
        case noErr:
            return "No Error"
            
        // AudioComponent errors
        case kAudioComponentErr_DuplicateDescription:
            return "AudioComponent: Duplicate Description"
        case kAudioComponentErr_InitializationTimedOut:
            return "AudioComponent: Initialization Timed Out"
        case kAudioComponentErr_InvalidFormat:
            return "AudioComponent: Invalid Format"
        case kAudioComponentErr_NotPermitted:
            return "AudioComponent: Not Permitted"
        case kAudioComponentErr_TooManyInstances:
            return "AudioComponent: Too Many Instances"
        case kAudioComponentErr_UnsupportedType:
            return "AudioComponent: Unsupported Type"
        case kAudioComponentErr_InstanceInvalidated:
            return "AudioComponent: Instance Invalidated"
        case kAudioComponentErr_InstanceTimedOut:
            return "AudioComponent: Instance Timed Out"
            
        // AudioUnit errors
        case kAudioUnitErr_CannotDoInCurrentContext:
            return "AudioUnit: Cannot Do In Current Context"
        case kAudioUnitErr_FailedInitialization:
            return "AudioUnit: Failed Initialization"
        case kAudioUnitErr_FileNotSpecified:
            return "AudioUnit: File Not Specified"
        case kAudioUnitErr_FormatNotSupported:
            return "AudioUnit: Format Not Supported"
        case kAudioUnitErr_Initialized:
            return "AudioUnit: Initialized"
        case kAudioUnitErr_InvalidElement:
            return "AudioUnit: Invalid Element"
        case kAudioUnitErr_InvalidFile:
            return "AudioUnit: Invalid File"
        case kAudioUnitErr_InvalidOfflineRender:
            return "AudioUnit: Invalid Offline Render"
        case kAudioUnitErr_InvalidParameter:
            return "AudioUnit: Invalid Parameter"
        case kAudioUnitErr_InvalidProperty:
            return "AudioUnit: Invalid Property"
        case kAudioUnitErr_InvalidPropertyValue:
            return "AudioUnit: Invalid Property Value"
        case kAudioUnitErr_InvalidScope:
            return "AudioUnit: Invalid Scope"
        case kAudioUnitErr_NoConnection:
            return "AudioUnit: No Connection"
        case kAudioUnitErr_PropertyNotInUse:
            return "AudioUnit: Property Not In Use"
        case kAudioUnitErr_PropertyNotWritable:
            return "AudioUnit: Property Not Writable"
        case kAudioUnitErr_TooManyFramesToProcess:
            return "AudioUnit: Too Many Frames To Process"
        case kAudioUnitErr_Unauthorized:
            return "AudioUnit: Unauthorized"
        case kAudioUnitErr_Uninitialized:
            return "AudioUnit: Uninitialized"
        case kAudioUnitErr_UnknownFileType:
            return "AudioUnit: Unknown File Type"
        case kAudioUnitErr_RenderTimeout:
            return "AudioUnit: Render Timeout"
        case kAudioUnitErr_ExtensionNotFound:
            return "AudioUnit: Extension Not Found"
        case kAudioUnitErr_InvalidFilePath:
            return "AudioUnit: Invalid File Path"
        case kAudioUnitErr_InvalidParameterValue:
            return "AudioUnit: Invalid Parameter Value"
        case kAudioUnitErr_MIDIOutputBufferFull:
            return "AudioUnit: MIDI Output Buffer Full"
        case kAudioUnitErr_MissingKey:
            return "AudioUnit: Missing Key"
            
        // Undefined
        default:
            return "Undefined Error"
        }
    }
}
