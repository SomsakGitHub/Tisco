//
//  UINavigationController.swift
//  marauders
//
//  Created by somsak02061 on 4/1/2567 BE.
//

import UIKit

private class NavigationOrigin {
    static let shared = NavigationOrigin()
    var origin: AnyClass?
}

public extension UINavigationController {
    func popToViewController(ofClass: AnyClass, animated: Bool = true) {
//        print("viewControllers.last(where: { $0.isKind(of: ofClass) })", viewControllers.last(where: { $0.isKind(of: ofClass) }))
        if let vc = viewControllers.last(where: { $0.isKind(of: ofClass) }) {
            popToViewController(vc, animated: animated)
        }
    }
    
    func popViewController(animated: Bool, completion: @escaping () -> Void) {
        popViewController(animated: animated)
        
        if animated, let coordinator = transitionCoordinator {
            coordinator.animate(alongsideTransition: nil) { _ in
                completion()
            }
        } else {
            completion()
        }
    }
    
    func popToRootViewController(animated: Bool, completion: @escaping () -> Void) {
        popToRootViewController(animated: animated)
        
        if animated, let coordinator = transitionCoordinator {
            coordinator.animate(alongsideTransition: nil) { _ in
                completion()
            }
        } else {
            completion()
        }
    }
    
    func popToOriginViewControllerIfExist(animated: Bool) {
        if let origin = NavigationOrigin.shared.origin {
            popToViewController(ofClass: origin)
        } else {
            popToRootViewController(animated: animated)
        }
        
        NavigationOrigin.shared.origin = nil
    }
    
    func set(origin: UIViewController?) {
        if let vc = origin {
            NavigationOrigin.shared.origin = type(of: vc)
        } else {
            NavigationOrigin.shared.origin = nil
        }
        
    }
}

