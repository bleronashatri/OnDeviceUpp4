//
//  ContentView.swift
//  OnDeviceUpp4
//
//  Created by Blerona Shatri Dreshaj on 2023-10-25.
//

import SwiftUI

struct ContentView: View {
    let do_model = DoModel()
    @State var animal_prediction_1 = ""
    @State var animal_prediction_2 = ""
    var body: some View {
        HStack {
            VStack {
                Image("dog")
                    .resizable()
                    .frame(width: 150, height: 150)
                Button {
                    animal_prediction_1 = do_model.doImage("dog")
                } label: {
                    Text("Predict animal")
                }
                Text(animal_prediction_1)
                    .frame(width: 100)
            }
            VStack {
                Image("images")
                    .resizable()
                    .frame(width: 150, height: 150)
                Button {
                    animal_prediction_2 = do_model.doImage("images")
                } label: {
                    Text("Predict animal")
                }
                Text(animal_prediction_2)
                    .frame(width: 100)
            }
        }
    }
}

#Preview {
    ContentView()
}
