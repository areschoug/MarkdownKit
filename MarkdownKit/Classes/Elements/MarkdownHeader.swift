//
//  MarkdownHeader.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//

import UIKit

open class MarkdownHeader: MarkdownLevelElement {

  fileprivate static let regex = "^(#{1,%@})\\s*(.+)$"

  open var attributes: [String : AnyObject]
  open var maxLevel: Int
  open var fontIncrease: Int

  open var regex: String {
    let level: String = maxLevel > 0 ? "\(maxLevel)" : ""
    return String(format: MarkdownHeader.regex, level)
  }

  public init(attributes: [String: AnyObject] = [:], maxLevel: Int = 0, fontIncrease: Int = 2) {
    self.attributes = attributes
    self.maxLevel = maxLevel
    self.fontIncrease = fontIncrease
  }

  open func formatText(_ attributedString: NSMutableAttributedString, range: NSRange, level: Int) {
    attributedString.deleteCharacters(in: range)
  }

  open func attributesForLevel(_ level: Int) -> [String: AnyObject] {
    var attributes = self.attributes
    if let font = self.attributes[NSFontAttributeName] as? UIFont {
      let headerFontSize: CGFloat = font.pointSize + (CGFloat(level) * CGFloat(fontIncrease))
      attributes[NSFontAttributeName] = font.withSize(headerFontSize)
    }
    return attributes
  }
}
