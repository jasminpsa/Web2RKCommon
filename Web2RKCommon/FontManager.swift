//
//  FontManager.swift
//  Web To RK Template
//
//  Created by Zaid Pathan on 03/08/17.
//  Copyright © 2017 Applied Informatics. All rights reserved.
//

import UIKit

@objc public enum FontType:Int{
    case light
    case regular
    case bold
    
    public var value : String {
        switch self {
        case .light:
            return "Light"
        case .regular:
            return "Regular"
        case .bold:
            return "Bold"
        }
    }
}

@objc public enum FontSize : Int{
    case appNameHeadline
    case headline
    case subHeadlineOrSurveyQuestion
    case basic
    case regular
    case small
    case tiny
    
    public var value : CGFloat{
        switch self {
        case .appNameHeadline:
            return 40
        case .headline:
            return 33
        case .subHeadlineOrSurveyQuestion:
            return 22
        case .basic:
            return 19   //BodyShortCopy, SurveyAnswer, SingleButton, ReverseHeadline
        case .regular:
            return 15   //BodyLongCopy, SurveyDropdown, MultiButton
        case .small:
            return 12
        case .tiny:
            return 10
        }
    }
}

@objc public class FontManager : NSObject {
    @objc open class func getFont(_ fontType:FontType, fontSize: FontSize) -> UIFont {
        var fontObj = UIFont.systemFont(ofSize: fontSize.value)
        if let path = Bundle.main.path(forResource: Const.FileName.info, ofType: Const.FileExtension.plist),let dict = NSDictionary(contentsOfFile: path),let abFontFamily = dict[Const.Plist.ABFontFamily] as? String{
            if let font = UIFont(name: "\(abFontFamily)-\(fontType.value)", size: fontSize.value){
                fontObj = font
            }
            
        } else {
            switch fontType {
            case .light:
                fontObj = UIFont.systemFont(ofSize: fontSize.value, weight: UIFontWeightLight)
            case .regular:
                fontObj = UIFont.systemFont(ofSize: fontSize.value, weight: UIFontWeightRegular)
            case .bold:
                fontObj = UIFont.systemFont(ofSize: fontSize.value, weight: UIFontWeightBold)
            }
        }
        
        return fontObj
    }
}
