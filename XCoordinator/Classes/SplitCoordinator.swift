//
//  SplitCoordinator.swift
//  XCoordinator
//
//  Created by Paul Kraft on 30.07.18.
//  Copyright © 2018 QuickBird Studios. All rights reserved.
//

open class SplitCoordinator<RouteType: Route>: BaseCoordinator<RouteType, SplitTransition> {

    // MARK: - Init

    public init(master: Presentable, detail: Presentable?) {
        super.init(initialRoute: nil)
        rootViewController.viewControllers = [master.viewController, detail?.viewController].compactMap { $0 }
    }
}
