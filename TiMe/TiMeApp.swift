//
//  TiMeApp.swift
//  TiMe
//
//  Created by Francesco Merola on 13/12/22.
//

import SwiftUI

@main
struct TiMeApp: App {

    @StateObject var vm = CoreDataViewModel()
    
    @StateObject var day = ChosenDay()
    
    var body: some Scene {
        WindowGroup {
            TaskListView()
                .environmentObject(vm)
                .environmentObject(day)
        }
    }
}
