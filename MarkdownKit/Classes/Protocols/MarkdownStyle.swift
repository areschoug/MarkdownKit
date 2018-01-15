//
//  MarkdownStyle.swift
//  Pods
//
//  Created by Ivan Bruel on 18/07/16.
//
//

import UIKit

/// Styling protocol for all MarkdownElements
public protocol MarkdownStyle {
  
  var attributes: [NSAttributedStringKey: AnyObject] { get }
}

