//
//  ContentView.swift
//  Landmarks2
//
//  Created by Jae Ki Lee on 2020/03/27.
//  Copyright © 2020 Jae Ki Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turltle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree Nation Park")
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
            }
        }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
