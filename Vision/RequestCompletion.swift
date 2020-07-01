//
//  RequestCompletion.swift
//  RxVision
//
//  Created by Maxim Volgin on 27/09/2018.
//  Copyright (c) RxSwiftCommunity. All rights reserved.
//

import Vision

@available(iOS 11.0, *)
typealias _RequestCompletion = (request: VNRequest, error: Error?)

@available(iOS 11.0, *)
public typealias RequestCompletion<T> = (value: T?, request: VNRequest, error: Error?)

