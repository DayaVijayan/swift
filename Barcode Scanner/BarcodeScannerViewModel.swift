//
//  BarcodeScannerViewModel.swift
//  Barcode Scanner
//
//  Created by daya vijayan on 13/11/23.
//

import SwiftUI
import Foundation

final class BarcodeScannerViewModel:ObservableObject{
    @Published  var scannedCode = ""
//    @State private var isShowingAlert = false
    @Published  var alertItem: AlertItem?
    var statusText: String{
        return scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }
    
    var statusTextColor:Color{
        scannedCode.isEmpty ? .red : .green
    }
}
