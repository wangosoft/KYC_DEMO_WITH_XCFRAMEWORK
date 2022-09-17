# ``KYC_SDK``

KYC SDK for iOS supports 13 and above


### Install iOS framework from Cocoapods
```
  pod 'KYC_SDK', '~> 0.6'
```

### Required Permissions
```
Privacy - Camera Usage Description
```

### Getting Started
Start KYC session like this
```Swift
let kycCore: KycCore = KycCore.getInstance()
kycCore.apply(navigationController: YOUR_NAVIGATION_CONTROLLER, delegate: self, signatureKey: YOUR_SIGNATURE_KEY, environment: .STAGING) // STAGING, RELEASE
kycCore.startKyc()
```

And listen your result like protocol
```Swift
extension ViewController: KycCoreProtocol {
    func onCompleted() {
        
    }
    
    func onCancelled() {
        
    }
    
    func onFailure(exception: KycCoreSdkException?) {
        
    }
    
    func onPermissionEvent(permissionEvents: PermissionEvents) {
        
    }
}
```

### EXCEPTIONS

static int    REASON_CAMERA_DISCONNECTED    Camera was forced to disconnect.

static int    REASON_CAMERA_FAILED_TO_CONNECT    We failed to connect to the camera service.

static int    REASON_CAMERA_FAILED_TO_START_PREVIEW    Failed to start the camera preview.

static int    REASON_CAMERA_PICTURE_FAILED    Could not take a picture or a picture snapshot, for some not specified reason.

static int    REASON_CAMERA_VIDEO_FAILED    Could not take a video or a video snapshot, for some not specified reason.

static int    REASON_KYC_CORE_NOT_INITIALIZED    KycKore SDK not initialized

static int    REASON_NO_CAMERA    Indicates that we could not find a camera for the current Facing value.

static int    REASON_SIGNATURE_KEY_NULL    Signature Key is empty

static int    REASON_UNKNOWN    Unknown error.


### PERMISSIONS

public enum PermissionEvents {

    case REQUESTED
    
    case GRANTED
    
    case DENIED
    
    case SHOW_REQUEST_PERMISSION_RATIONALE
    
}
