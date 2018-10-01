//
//  RxVNCoreMLRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxVNCoreMLRequest<T>: RxVNRequest<T> {
    
    public init(model: VNCoreMLModel, imageCropAndScaleOption: VNImageCropAndScaleOption) {
        let handler = RxVNRequestCompletionHandler()
        let request: VNCoreMLRequest = VNCoreMLRequest(model: model, completionHandler: handler.requestCompletionHandler)
        request.imageCropAndScaleOption = imageCropAndScaleOption
        super.init(request: request, handler: handler)
    }
    
}
