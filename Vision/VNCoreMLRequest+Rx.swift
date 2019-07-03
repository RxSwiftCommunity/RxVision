//
//  VNCoreMLRequest+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNCoreMLRequest {
    
    public static func request<T>(model: VNCoreMLModel, imageCropAndScaleOption: VNImageCropAndScaleOption) -> RxVNCoreMLRequest<T> {
        return RxVNCoreMLRequest<T>(model: model, imageCropAndScaleOption: imageCropAndScaleOption)
    }
    
}
