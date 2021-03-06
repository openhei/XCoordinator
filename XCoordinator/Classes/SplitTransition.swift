//
//  SplitViewTransition.swift
//  XCoordinator
//
//  Created by Paul Kraft on 29.07.18.
//  Copyright © 2018 QuickBird Studios. All rights reserved.
//

public typealias SplitTransition = Transition<UISplitViewController>

extension Transition where RootViewController: UISplitViewController {
    public static func show(_ presentable: Presentable) -> SplitTransition {
        return SplitTransition(presentables: [presentable], animation: nil) { options, performer, completion in
            performer.show(
                presentable.viewController,
                with: options,
                completion: {
                    presentable.presented(from: performer)
                    completion?()
                }
            )
        }
    }

    public static func showDetail(_ presentable: Presentable) -> SplitTransition {
        return SplitTransition(presentables: [presentable], animation: nil) { options, performer, completion in
            performer.showDetail(
                presentable.viewController,
                with: options,
                completion: {
                    presentable.presented(from: performer)
                    completion?()
                }
            )
        }
    }
}
