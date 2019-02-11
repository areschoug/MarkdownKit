//
//  MarkdownBold.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//
import Foundation

open class MarkdownBold: MarkdownCommonElement {

  fileprivate static let regex = "(\\s+|^)(\\*\\*|__)(.+?)(\\2)"

  open var attributes: [NSAttributedString.Key: AnyObject]

  open var regex: String {
    return MarkdownBold.regex
  }

  public init(attributes: [NSAttributedString.Key: AnyObject] = [:]) {
    self.attributes = attributes
  }

}
