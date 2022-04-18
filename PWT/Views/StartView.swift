//
//  StartView.swift
//  PWT
//
//  Created by Pauli Sairanen on 18/4/22.
//

import SwiftUI

struct StartView: View {
    var body: some View {
		 GeometryReader {metrics in
			 NavigationView {
				 VStack {
					 Spacer()
					 NavigationLink(destination: LanguagesView()) {
						 Text("Languages")
							 .frame(width: metrics.size.width * 0.8, height: metrics.size.height * 0.3, alignment: .center)
							 .foregroundColor(.white)
							 .background(Color.red)
					 }
					 .buttonStyle(FlatLinkStyle())
					 Spacer()
					 NavigationLink(destination: SelectPracticeView()) {
						 Text("Practice")
							 .frame(width: metrics.size.width * 0.8, height: metrics.size.height * 0.3, alignment: .center)
							 .foregroundColor(.white)
							 .background(Color.red)
					 }
					 .buttonStyle(FlatLinkStyle())
					 Spacer()
				 }
			 }
		 }

	 }}

// Disables the flash of button press
struct FlatLinkStyle: ButtonStyle {
	func makeBody(configuration: Configuration) -> some View {
		configuration.label
	}
}


struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}


struct LanguagesView: View {
	var body: some View {
		Text("Hello languages")
	}
}

struct SelectPracticeView: View {
	var body: some View {
		Text("Select practice in here")
	}
}
