//
//  VNDetectBarcodesRequest+Rx.swift
//  RxVision
//
//  Created by Maxim Volgin on 02/10/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision
import RxSwift

extension Reactive where Base: VNDetectBarcodesRequest {
    
    public static func request<T>(symbologies: [VNBarcodeSymbology]) -> RxVNDetectBarcodesRequest<T> {
        return RxVNDetectBarcodesRequest<T>(symbologies: symbologies)
    }
    
}
