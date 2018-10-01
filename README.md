# RxVision
RxVision (based on RxSwift)

Basic usage.

```swift
let mlRequest: RxVNCoreMLRequest<CGImage> = VNCoreMLRequest.rx.request(model: model, imageCropAndScaleOption: .scaleFit)

mlRequest
    .observable
    .subscribe { [unowned self] (event) in
        switch event {
            case .next(let completion):       
                let cgImage = completion.value // NB you can easily pass the value along to the completion handler 
                if let result = completion.request.results?[0] as? VNClassificationObservation {
                    os_log("results: %@", type: .debug, result.identifier)
                }
            default:
                break
        }
    }
    .disposed(by: disposeBag)

let imageRequestHandler = VNImageRequestHandler(cgImage: cgImage, orientation: .up, options: requestOptions)
do {
    try imageRequestHandler.rx.perform([mlRequest], with: cgImage) // NB you can easily pass the value along to the completion handler
} catch {
    print(error)
}
```

Carthage setup.

```
github "maxvol/RxVision" ~> 0.0.7

```

