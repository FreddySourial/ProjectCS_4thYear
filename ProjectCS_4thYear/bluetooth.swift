////
////  bluetooth.swift
////  test.app
////
////  Created by Freddy Sourial on 2023-03-04.
////
//
//import SwiftUI
//import CoreBluetooth
//
//class BluetoothViewModel: NSObject, ObservableObject {
//    private var centralManager: CBCentralManager?
//    private var peripherals: [CBPeripheral] = []
//    @Published var peripheralNames: [String] = []
//    @Published var bleconnect1 = false
//    private var bleconnect = false
//    private var fake =  false
//    
//    override init() {
//        super.init()
//        self.centralManager = CBCentralManager(delegate: self, queue: .main)
//    }
//}
//extension BluetoothViewModel: CBCentralManagerDelegate {
//    func centralManagerDidUpdateState(_ central: CBCentralManager) {
//     
//      
//            if central.state == .poweredOn {
//                self.centralManager?.scanForPeripherals(withServices: nil)
//          
//            }
//        
//    }
//    
//    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
//        
////      var n=2
////        if (n<=10) {
//            
//        
//        
//            if !peripherals.contains(peripheral) {
//                self.peripherals.append(peripheral)
//                self.peripheralNames.append(peripheral.name ?? "unnamed device")
//                print("Peripheral name: \(peripheral.name)")
//                
//                
//                
//                
//            
//                if (peripheral.name=="Freddy’s MacBook Pro"){
////                    bleconnect = true
////                    bleconnect1 = true
//                    print("Connected OH BABBBYYYYY")
////                    print (bleconnect1)
//                    //BlueNRG
//                    //                "Freddy’s MacBook Pro"
//                    
//                }
////                else if (peripheral.name != "MX Master") {
////                    bleconnect1 = false
////                    print("NO CONNECT")
////                    print (bleconnect1)
////                }
//                //            else if (peripheral.name != "Freddy’s iPad") {
//                //                    bleconnect1 = false
//                //                    print("NO CONNECT")
//                //                    print (bleconnect1)
//                //
//                //                }
////                n+=2
////                print(n)
////            }
//        
//        }
//        
//    }
//}
//
// 
//
//struct bluetooth: View {
//    
//    
//    
//    
//    @State private var togglebutton = false
//    @State public var isconnected = false
//    
//    @ObservedObject private var bluetoothViewModel = BluetoothViewModel()
//    
//    var body: some View {
//      
//        
//       VStack{
//            Spacer()
//           
//           
////           Button (action: { function()
////           }, label: {
////               Text("Text")
////           })
//
//            if bluetoothViewModel.bleconnect1 == true {
//                
//                Text("Bluetooth Connection is Established. Device is nearby.")
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.center)
//                    
//                    .padding(.all)
//                    .foregroundColor(.black)
//                    .frame(width: 300, height: 100.0)
//                        .background(Color.green)
//                        .cornerRadius(10)
//            } else {
//                Text ("BLUETOOTH CONNECTION HAS BEEN LOST! SEARCHING FOR GPS COORDINATES")
//                    .fontWeight(.bold)
//                    .multilineTextAlignment(.center)
//                    
//                    .padding(.all)
//                    .foregroundColor(.black)
//                    .frame(width: 300, height: 100.0)
//                        .background(Color.red)
//                        .cornerRadius(10)
//            }
////            Text("test \(bluetoothViewModel.bleconnect1)" as String)
////            Toggle ("Is Bluetooth connected?" , isOn: $togglebutton)
//            
//            Text("Peripherals")
//            NavigationView {
//                
//                List(bluetoothViewModel.peripheralNames, id: \.self) { peripheral in
//                    Text(peripheral)
//                } .refreshable {
//                    
//                }
////                List(bluetoothViewModel.peripheralNames, id: \.self) { peripheral in
////                    Text(peripheral)
////                }
//                
//           
//            }
//        }
//        
//        
//    }
//}
//struct bluetooth_Previews: PreviewProvider {
//    static var previews: some View {
//        
//        bluetooth()
//    }
//}
