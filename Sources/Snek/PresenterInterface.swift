//
//  PresenterInterface.swift
//  Snek
//
//  Created by Philip Niedertscheider on 30.01.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

public protocol PresenterInterface: ViewToPresenterInterface & InteractorToPresenterInterface & RouterToPresenterInterface {
    
    associatedtype InteractorInterface
    associatedtype RouterInterface
    associatedtype ViewInterface
    
    var view: ViewInterface! { get set }
    var interactor: InteractorInterface { get set }
    var router: RouterInterface! { get set }
    
    init(interactor: InteractorInterface) 
}
