//
//  MarkdownItalic.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//
import Foundation

open class MarkdownItalic: MarkdownCommonElement {
  
  fileprivate static let regex = "(\\s+|^)(\\*|_)(.+?)(\\2)"
  
  open var font: MarkdownFont?
  open var color: MarkdownColor?
  
  open var regex: String {
    return MarkdownItalic.regex
  }

  public init(attributes: [String: AnyObject] = [:]) {
    self.attributes = attributes
  }

}
