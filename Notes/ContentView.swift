//
//  ContentView.swift
//  Notes
//
//  Created by Shifat Ur Rahman on 19.06.24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var notesViewModel: NotesViewModel

    var body: some View {
        
        Group {
            if notesViewModel.isDataLoaded {
                NotesView()
            } else {
                ProgressView("Loading...")
            }
        }
    }
}

#Preview {
    ContentView()
}
