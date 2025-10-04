//
//  ListView.swift
//  MyTemplate_1
//
//  Created by sebastian lee on 10/4/25.
//

import SwiftUI

struct ListView: View {
    @State var langs = ["Java", "CPP", "Swift", "Python", "Ruby"]
    var body: some View {
        NavigationView {
            //        List(langs, id:\.self) { select in
            //            HStack{
            //                Text(select)
            //                    .font(select == "Languages" ? .largeTitle : .body)
            //
            //                Spacer()
            //
            //                Image(systemName: select == "Java" ? "circle.fill" : "circle")
            //                    .foregroundStyle(.red)
            //            }
            //            CustomRow(content: select)
            List {
                Section {
                    ForEach(langs, id: \.self) { select in
                        Text(select).font(.system(size: 24)).padding()
                    }
                    .onDelete(perform: delete)
                    .onMove(perform: moveRow)
                }
            }
            .navigationTitle("Favorite Languages")
            .toolbar {
                EditButton()
            }
        }

    }

    func delete(at indexes: IndexSet) {
        if let first = indexes.first {
            langs.remove(at: first)
        }
    }

    func moveRow(from indexes: IndexSet, to destination: Int) {
        if let first = indexes.first {
            langs.insert(langs.remove(at: first), at: destination)
        }
    }
}

struct CustomRow: View {
    var content: String

    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
            Text(content)
            Spacer()
        }
        .foregroundStyle(content == "Swift" ? .pink : .primary)
        .font(.title)
        .padding([.top, .bottom])
    }
}

#Preview {
    ListView()

}
