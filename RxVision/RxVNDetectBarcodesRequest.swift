//
//  RxVNDetectBarcodesRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 02/10/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision
import RxSwift

public final class RxRxVNDetectBarcodesRequest<T>: RxVNRequest<T> {
    
    public init(symbologies: [VNBarcodeSymbology]) {
        let handler = RxVNRequestCompletionHandler()
        let request: VNDetectBarcodesRequest = VNDetectBarcodesRequest(completionHandler: handler.requestCompletionHandler)
        request.symbologies = symbologies
        super.init(request: request, handler: handler)
    }
    
}
