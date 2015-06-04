import UIKit

/// Defines styles for the bar button.
public class SABButtonStyle {
  
  /// The parent style is used to get the property value if the object is missing one.
  var parent: SABButtonStyle?
  
  init(parentStyle: SABButtonStyle? = nil) {
    self.parent = parentStyle
  }
  
  /// Clears the styles for all properties for this style object. The styles will be taken from parent and default properties.
  public func clear() {
    _image = nil
    _accessibilityLabel = nil
    _onTap = nil
    _size = nil
    _horizontalMarginToBar = nil
    _tintColor = nil
  }
  
  // -----------------------------
  
  private var _image: UIImage?
  
  /// Button image. Button only shown when the image is present. The color of the image can be changes with tintColor property.
  public var image: UIImage? {
    get {
      return _image ?? parent?.image ?? SABButtonDefaultStyles.image
    }
    
    set {
      _image = newValue
    }
  }
  
  // -----------------------------

  private var _accessibilityLabel: String?
  
  /**
  
  This text is spoken by the device when it is in accessibility mode. It is recommended to always set the accessibility label for your button. The text can be a short localized description of the button function, for example: "Close", "Reload" etc.
  
  */
  public var accessibilityLabel: String? {
    get {
      return _accessibilityLabel ?? parent?.accessibilityLabel ?? SABButtonDefaultStyles.accessibilityLabel
    }
    
    set {
      _accessibilityLabel = newValue
    }
  }
  
  // -----------------------------
  
  private var _onTap: SABButtonOnTap?
  
  /// A closure that is called when user taps the button.
  public var onTap: SABButtonOnTap? {
    get {
      return _onTap ?? parent?.onTap ?? SABButtonDefaultStyles.onTap
    }
    
    set {
      _onTap = newValue
    }
  }
  
  // -----------------------------
  
  private var _size: CGSize?
  
  /// Size of the button
  public var size: CGSize {
    get {
      return _size ?? parent?.size ?? SABButtonDefaultStyles.size
    }
    
    set {
      _size = newValue
    }
  }
  
  // -----------------------------
  
  private var _horizontalMarginToBar: CGFloat?
  
  /// Horizontal margin between the bar edge and the button.
  public var horizontalMarginToBar: CGFloat {
    get {
      return _horizontalMarginToBar ?? parent?.horizontalMarginToBar ??
        SABButtonDefaultStyles.horizontalMarginToBar
    }
    
    set {
      _horizontalMarginToBar = newValue
    }
  }
  
  // -----------------------------
  
  private var _tintColor: UIColor?
  
  /// Button tint color. When set it is used to replace the image colors.
  public var tintColor: UIColor? {
    get {
      return _tintColor ?? parent?.tintColor ?? SABButtonDefaultStyles.tintColor
    }
    
    set {
      _tintColor = newValue
    }
  }
}