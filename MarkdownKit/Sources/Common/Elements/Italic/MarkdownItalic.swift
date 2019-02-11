//
//  MarkdownItalic.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//
import Foundation

open class MarkdownItalic: MarkdownCommonElement {

  fileprivate static let regex = "(\\s|^)(\\*|_)(?![\\*_\\s])(.+?)(?<![\\*_\\s])(\\2)"

  open var attributes: [NSAttributedString.Key: AnyObject]

  open var regex: String {
    return MarkdownItalic.regex
  }

  public init(attributes: [NSAttributedString.Key: AnyObject] = [:]) {
    self.attributes = attributes
  }

}
