//
//  RouterInterface.swift
//  Snek
//
//  Created by Philip Niedertscheider on 30.01.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

public protocol RouterInterface: PresenterToRouterInterface {
    
    associatedtype PresenterInterface
    associatedtype ViewInterface
    
    var presenter: PresenterInterface! { get set }
    var view: ViewInterface! { get set }

}
