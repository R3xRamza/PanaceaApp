//
//  QRCodeScanner.swift
//  PanaceaQR
//
//  Created by Rex Ramza on 11/7/22.
//

import SwiftUI
import CodeScanner

//Creating a public class for the entire project
class ContentViewDelegate: ObservableObject {
    //Creating a public variable to pass between files
    @Published var name:String = "Scan a QR code to get started"
}

struct QRCodeScanner: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String = "Scan a QR code to get started"
    
    @ObservedObject var delegate: ContentViewDelegate
    
    var scannerSheet: some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: {result in
                if case let .success(code) = result{
                    self.delegate.name = code.string
                    self.scannedCode = code.string
                    self.isPresentingScanner = false
            }
        })
    }
    
    //Creating the blank page
    var body: some View {
        //Manager of the different items in the blank view
        VStack(spacing: 50){
            Text(scannedCode)
            //Declaring the button with the title
            Button("Scan QR Code"){
                //What the button does
                self.isPresentingScanner = true
            }
            
            .sheet(isPresented: $isPresentingScanner){
                self.scannerSheet
            }

        }
    }
}

struct QRCodeScanner_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeScanner(delegate: ContentViewDelegate())
        
    }
}
