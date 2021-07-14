//
//  Helper.swift
//  CategoryApp
//
//  Created by mac on 24/06/21.
//

import SwiftUI


class AppFont {
    
    func regularFont(size: CGFloat) -> Font {
        return Font.custom("Spartan-Regular", size: size)
    }
    
    func mediumFont(size: CGFloat) -> Font {
        return Font.custom("Spartan-Medium", size: size)
    }
    
    func boldFont(size: CGFloat) -> Font {
        return Font.custom("Spartan-SemiBold", size: size)
    }
}


struct AppString {
    static let categoryList = "Category List"
    static let name = "Name : "
    static let enterName = "Enter Name"
    static let chooseColor = "Choose colour:"
    static let addNew = "Add new:"
    static let plus = "+"
    static let delete = "Delete"
    static let save = "Save"
}

struct AppColor {
    static let red = Color(red: 255/255, green: 36/255, blue: 36/255)
    static let gray = Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.3)
}

struct AppImages {
    static let cancel = "cancel"
    static let addEnable = "addEnable"
    static let addDisable = "addDisable"
}
