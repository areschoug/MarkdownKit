//
//  MarkdownBold.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//

import UIKit

open class MarkdownBold: MarkdownCommonElement {

  fileprivate static let regex = "(\\s+|^)(\\*\\*|__)(.+?)(\\2)"

  open var attributes: [NSAttributedStringKey: AnyObject]

  open var regex: String {
    return MarkdownBold.regex
  }

  public init(attributes: [NSAttributedStringKey: AnyObject] = [:]) {
    self.attributes = attributes
  }

}
