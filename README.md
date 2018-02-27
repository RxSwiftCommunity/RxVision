# RxVision
RxVision (based on RxSwift)

Basic usage.

```swift
let handler = VNImageRequestHandler(...) // image, etc.
handler
    .rx
    .perform([...]) // requests
    .subscribeOn(Scheduler.concurrentUser) // your own scheduler
    .subscribe()
    .disposed(by: disposeBag)
```

Carthage setup.

```
github "maxvol/RxVision" ~> 0.0.1

```

