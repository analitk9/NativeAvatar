//
//  Extension.swift
//  NativeAvatar
//
//  Created by Denis Evdokimov on 11/23/23.
//

import UIKit

public extension UINavigationBar {
  var largeTitleView: UIView? {
    return findLargeTitleView(in: self)
  }
    
  private func findLargeTitleView(in view: UIView) -> UIView? {
    if String(describing: type(of: view)) == "_UINavigationBarLargeTitleView" {
      return view
    }
    for subview in view.subviews {
      if let findedView = findLargeTitleView(in: subview) {
        return findedView
      }
    }
    return nil
  }
}
