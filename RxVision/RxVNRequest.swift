//
//  RxVNRequest.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import Vision

public protocol RxVNRequest {
    
    associatedtype T
    
    var value: T? { get set }    
    var request: VNRequest { get }
}
