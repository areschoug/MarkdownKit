//
//  MarkdownList.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//

import UIKit

open class MarkdownList: MarkdownLevelElement {

  fileprivate static let regex = "^([\\*\\+\\-]{1,%@})\\s+(.+)$"

  open var attributes: [String: AnyObject]
  open var maxLevel: Int
  open var separator: String
  open var indicator: String

  open var regex: String {
    let level: String = maxLevel > 0 ? "\(maxLevel)" : ""
    return String(format: MarkdownList.regex, level)
  }

  public init(attributes: [String: AnyObject] = [:], maxLevel: Int = 0, indicator: String = "• ", separator: String = " ") {
    self.attributes = attributes
    self.maxLevel = maxLevel
    self.indicator = indicator
    self.separator = separator
  }

  open func formatText(_ attributedString: NSMutableAttributedString, range: NSRange, level: Int) {
    var string = (0..<level).reduce("") { (string, _) -> String in
      return "\(string)\(separator)"
    }
    string = "\(string)\(indicator)"
    attributedString.replaceCharacters(in: range, with: string)
  }

  public func addAttributes(_ attributedString: NSMutableAttributedString, range: NSRange, level: Int) {
    let added = indicator.count + separator.count
    attributedString.addAttributes(attributesForLevel(level - 1), range: NSRange(location: range.location - added, length:range.length + added))
  }
  
}
