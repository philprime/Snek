//
//  ModuleInterface.swift
//  Snek
//
//  Created by Philip Niedertscheider on 30.01.20.
//  Copyright © 2020 Philip Niedertscheider. All rights reserved.
//

public protocol ModuleInterface: class {

    associatedtype View where View: ViewInterface
    associatedtype Interactor where Interactor: InteractorInterface
    associatedtype Router where Router: RouterInterface
    associatedtype Presenter where Presenter: PresenterInterface
    
    func assemble(presenter: Presenter, view: View, interactor: Interactor, router: Router)
    
}

extension ModuleInterface {
    
    public func assemble(presenter: Presenter, view: View, interactor: Interactor, router: Router) {
        assemble(presenter: presenter, view: view)
        assemble(presenter: presenter, router: router)
        assemble(presenter: presenter, interactor: interactor)
    }
    
    public func assemble(presenter: Presenter, view: View) {
        view.presenter = (presenter as! Self.View.PresenterInterface)
        presenter.view = (view as! Self.Presenter.ViewInterface)
    }
    
    public func assemble(presenter: Presenter, router: Router) {
        presenter.router = (router as! Self.Presenter.RouterInterface)
        router.presenter = (presenter as! Self.Router.PresenterInterface)
    }
    
    public func assemble(presenter: Presenter, interactor: Interactor) {
        presenter.interactor = (interactor as! Self.Presenter.InteractorInterface)
        interactor.presenter = (presenter as! Self.Interactor.PresenterInterface)
    }
}
