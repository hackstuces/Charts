//
//  IBarChartDataSet.swift
//  Charts
//
//  Copyright 2015 Daniel Cohen Gindi & Philipp Jahoda
//  A port of MPAndroidChart for iOS
//  Licensed under Apache License 2.0
//
//  https://github.com/danielgindi/Charts
//

import Foundation
import CoreGraphics

@objc
public protocol IBarChartDataSet: IBarLineScatterCandleBubbleChartDataSet
{
    // MARK: - Data functions and accessors
    
    // MARK: - Styling functions and accessors
    
    /// - returns: `true` if this DataSet is stacked (stacksize > 1) or not.
    var isStacked: Bool { get }
    
    /// - returns: The maximum number of bars that can be stacked upon another in this DataSet.
    var stackSize: Int { get }
    
    /// the color used for drawing the bar-shadows. The bar shadows is a surface behind the bar that indicates the maximum value
    var barShadowColor: NSUIColor { get set }
    
    /// the width used for drawing borders around the bars. If borderWidth == 0, no border will be drawn.
    var barBorderWidth : CGFloat { get set }

    /// the color drawing borders around the bars.
    var barBorderColor: NSUIColor { get set }
    
    /// the color drawing borders around the bars.
    var extraChartLeftOffset: Int { get set }

    #if !os(OSX)
    /// the option rounding bar corners
    var barRoundingCorners: UIRectCorner { get set }
    #endif
    
    /// - returns: The start point for the gradient fill
    var barGradientStartPoint : CGFloat { get set }
    
    /// - returns: The end point for the gradient fill
    var barGradientEndPoint : CGFloat { get set }
    
    /// the option rounding bar corners
    var barGradientColors: [NSUIColor] { get set }
    
    /// - returns: The gradient color at the given index of the DataSet's gradientColors array
    func barGradientColor(atIndex: Int) -> NSUIColor

    /// the alpha value (transparency) that is used for drawing the highlight indicator bar. min = 0.0 (fully transparent), max = 1.0 (fully opaque)
    var highlightAlpha: CGFloat { get set }
    
    /// array of labels used to describe the different values of the stacked bars
    var stackLabels: [String] { get set }
}
