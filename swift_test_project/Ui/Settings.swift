//
//  Settings.swift
//  swift_test_project
//
//  Created by Syed Munawer Ali on 18/06/2026.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        VStack{
            AsyncImage(url:URL(string: Constants.networkImage)){ image in
                image.image?.resizable().scaledToFit()
            }
        }
    }
}

#Preview {
    Settings()
}
