//
//  ViewModel.swift
//  test.app
//
//  Created by Freddy Sourial on 2023-03-03.
//

import Foundation
import Firebase

class ViewModel: ObservableObject {

    @Published var list = [Variables]()
    
//    @Published var listusers = [Users]()
    
    
//
//    func getUsers (){
//        //get reference to database
//        let db = Firestore.firestore()
//        //read the document
//        db.collection("users").getDocuments { snapshot1, error in
//                // check errors
//            if error == nil {
//                if let snapshot1 = snapshot1 {
//                    //update list property in main and not background thread
//                    DispatchQueue.main.async {
//                        self.listusers = snapshot1.documents.map { id in
//                            //create item for each document return
//                            return Users(id: id.documentID,
//
//                                             username1: id["password"] as? String ?? "",
//                                             password1: id["username"] as? String ?? "")
//                        }
//                    }
//                    // get all firebase documents
//
//                }
//            }
//            else {
//                //handle error
//
//            }
//        }
//    }
//
    
    
    
    func getData (){
        //get reference to database
        let db = Firestore.firestore()
        //read the document
        db.collection("safe-spaces").getDocuments { snapshot, error in
                // check errors
            if error == nil {
                if let snapshot = snapshot {
                    //update list property in main and not background thread
                    DispatchQueue.main.async {
                        self.list = snapshot.documents.map { d in
                            //create item for each document return
                            return Variables(id: d.documentID,
                                             location: d["location"] as? String ?? "",
                                             address: d["address"] as? String ?? "")
                        }
                    }
                    // get all firebase documents
                    
                }
            }
            else {
                //handle error
                
            }
        }
    }
    
//    func updateData (todoToUpdate: Variables){
//        //get a reference to the database
//        let db = Firestore.firestore()
//
//        // specify documents to update
//        db.collection("todos").document(todoToUpdate.id).setData(["name":"updated todo name:\(todoToUpdate.name)"], merge: true){error in
//            //check for errors
//            if error == nil {
//                //get new data
//                self.getData()
//            }
//        }
//    }

    func deleteData (todoToDelete: Variables){
        
        //get a reference to the database
        let db = Firestore.firestore()
        
        // specify documents to delete
    
        db.collection("safe-spaces").document(todoToDelete.id).delete { error in
            //check for errors
            if error == nil {
                //no errors
                
                // update the ui from the main thread
                    DispatchQueue.main.async{
                        self.list.removeAll { todo in
                            return todo.id == todoToDelete.id
                        
                        
                    }
                    
                }
            }
        }
    }

    
    func addData(location: String, address: String){
        //get reference to the database
        let db = Firestore.firestore()
        
        //add a document to a collection
        db.collection("safe-spaces").addDocument(data: ["location":location, "address":address]) { error in
            //check for errors
            if error == nil {
                //no errors
                self.getData()
            }
            else {
                // handle the error
            }
        }
        
    }
    
    
    func addUser(username1: String, password1: String){
        //get reference to the database
        let db = Firestore.firestore()
        
        //add a document to a collection
        db.collection("users").addDocument(data: ["username1":username1, "password1":password1]) { error in
            //check for errors
            if error == nil {
                //no errors
                //self.getData()
            }
            else {
                // handle the error
            }
        }
        
    }
    
}
