//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by daya vijayan on 09/11/23.
//
import SwiftUI
import Foundation
//not going to subclass a class.

final class FrameworkGridViewModel: ObservableObject{
    var selectedFramework : Framework?{
        didSet {
            isShowingDetailView = true
        }
        }
    @Published var isShowingDetailView = false
    

var columns : [GridItem] = [GridItem(.flexible()),
                GridItem(.flexible()),
                            GridItem(.flexible())
]
}
