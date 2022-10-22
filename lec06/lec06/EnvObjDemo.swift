//
//  EnvObjDemo.swift
//  lec06
//
//  Created by Rachel S on 10/20/22.
//

import Foundation
class Pet: ObservableObject {
    @Published var animal: String
    @Published var name: String
    @Published var age: Int
    var imageName: String
    
    init(animalType: String, animalName: String, animalAge: Int, imageName: String) {
        self.animal = animalType
        self.name = animalName
        self.age = animalAge
        self.imageName = imageName
    }
}

struct EnvObjDemo: View {
    @StateObject var myPet: Pet = Pet(animalType: "cat", animalName: "philip", animalAge: 1, imageName: "cat")
    
    var body: some View {
        VStack {
            displayPetView()
        }
        .environmentObject(myPet)
    }
}

struct displayPetView: View {
    @EnvronmentObject var myPet: Pet
    var body: some View {
        VStack {
            HStack {
                Text(myPet.animal)
                Text(myPet.name)
                Text(String(myPet.age))
            }
        }
    }
}

struct EnvObjDemo_Previews: PreviewProvider {
    static var previews: some View {
        EnvObjDemo()
    }
}
