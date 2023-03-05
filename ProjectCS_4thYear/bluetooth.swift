//
//  bluetooth.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-04.
//

import SwiftUI
import CoreBluetooth

class BluetoothViewModel: NSObject, ObservableObject {
    private var centralManager: CBCentralManager?
    private var peripherals: [CBPeripheral] = []
    @Published var peripheralNames: [String] = []
    @Published var bleconnect1 = false
    private var bleconnect = false
    private var fake =  false
    
    override init() {
        super.init()
        self.centralManager = CBCentralManager(delegate: self, queue: .main)
    }
}
extension BluetoothViewModel: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        if central.state == .poweredOn {
            self.centralManager?.scanForPeripherals(withServices: nil)
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        
        
        if !peripherals.contains(peripheral) {
            self.peripherals.append(peripheral)
            self.peripheralNames.append(peripheral.name ?? "unnamed device")
            print("Peripheral name: \(peripheral.name)")
            
            
            if (peripheral.name=="MX Master"){
                bleconnect = true
                bleconnect1 = true
                print("Connected OH BABBBYYYYY")
                print (bleconnect)
                
//                "Freddy’s MacBook Pro"
                
            }
            
        }
    }
}

 

struct bluetooth: View {
    
    
    
    
    @State private var togglebutton = false
    @State public var isconnected = false
    
    @ObservedObject private var bluetoothViewModel = BluetoothViewModel()
    
    var body: some View {
        VStack{
            
            if bluetoothViewModel.bleconnect1 == true {
                Text("Daddyy")
            } else {
                Text ("BOOOO")
            }
            Text("test \(bluetoothViewModel.bleconnect1)" as String)
            Toggle ("Is Bluetooth connected?" , isOn: $togglebutton)
            
            Text("Peripherals")
            NavigationView {
                List(bluetoothViewModel.peripheralNames, id: \.self) { peripheral in
                    Text(peripheral)
                }
                //            .navigationTitle("Peripherals") .padding(.top, 0.0)
           
            }
        }
        
    }
}
struct bluetooth_Previews: PreviewProvider {
    static var previews: some View {
        bluetooth()
    }
}
