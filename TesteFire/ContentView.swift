//
//  ContentView.swift
//  TesteFire
//
//  Created by Erick Moraes on 16/11/22.
//

import SwiftUI
import Firebase

@available(iOS 14.0, *)
struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        NavigationLink(destination: OneView()) {
          Text("One")
        }
        NavigationLink(destination: TwoView()) {
          Text("Two")
        }
      }
      .navigationTitle("Choose a screen")
      .onAppear() {
        Analytics.logEvent(AnalyticsEventScreenView,
                           parameters: [AnalyticsParameterScreenName: "\(ContentView.self)",
                                        AnalyticsParameterScreenClass: "\(ContentView.self)"])
      }
    }
  }
}

@available(iOS 14.0, *)
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
