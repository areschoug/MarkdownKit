//
//  MarkdownQuote.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//

import UIKit

open class MarkdownQuote: MarkdownLevelElement {

  fileprivate static let regex = "^(\\>{1,%@})\\s*(.+)$"

  open var attributes: [NSAttributedString.Key: AnyObject]
  open var maxLevel: Int
  open var separator: String
  open var indicator: String

  open var regex: String {
    let level: String = maxLevel > 0 ? "\(maxLevel)" : ""
    return String(format: MarkdownQuote.regex, level)
  }

  public init(attributes: [NSAttributedString.Key: AnyObject] = [:], maxLevel: Int = 0, indicator: String = ">",
              separator: String = "  ") {
    self.attributes = attributes
    self.maxLevel = maxLevel
    self.indicator = indicator
    self.separator = separator
  }

  open func formatText(_ attributedString: NSMutableAttributedString, range: NSRange, level: Int) {
    var string = (0..<level).reduce("") { (string: String, _: Int) -> String in
      return "\(string)\(separator)"
    }
    string = "\(string)\(indicator) "
    attributedString.replaceCharacters(in: range, with: string)
  }
}
