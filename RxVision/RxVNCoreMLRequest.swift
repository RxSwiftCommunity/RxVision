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
    
    private lazy var _request: VNCoreMLRequest = VNCoreMLRequest(model: self.model, completionHandler: self.handler?.requestCompletionHandler)
    private let model: VNCoreMLModel
    
    public init(model: VNCoreMLModel, imageCropAndScaleOption: VNImageCropAndScaleOption) {
        self.model = model
        super.init()
        _request.imageCropAndScaleOption = imageCropAndScaleOption
    }
    
    override public var request: VNRequest {
        get {
            return _request
        }
    }
    
}
