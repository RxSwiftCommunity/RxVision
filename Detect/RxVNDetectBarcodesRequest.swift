//
//  RxVNDetectBarcodesRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 02/10/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

@available(iOS 11.0, *)
public final class RxVNDetectBarcodesRequest<T>: RxVNRequest<T> {
    
    public init(symbologies: [VNBarcodeSymbology]) {
        let handler = RxVNRequestCompletionHandler()
        let request: VNDetectBarcodesRequest = VNDetectBarcodesRequest(completionHandler: handler.requestCompletionHandler)
        request.symbologies = symbologies
        super.init(request: request, handler: handler)
    }
    
}
