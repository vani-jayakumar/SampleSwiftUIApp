//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Vani on 10/31/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchText: String = ""
    let items = Array(1...20)
    let columns = [
        GridItem(.flexible(),spacing: 20),
        GridItem(.flexible(),spacing: 20)
    ]
    
    var body: some View {
        
        NavigationView {
            VStack(spacing:0) {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("Serach...", text: $searchText)
                            .padding(7)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                    }
                    .padding(.horizontal)
                    Menu {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Concern Status")
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Concern Type")
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Date Range")
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Priority Level")
                        })
                    } label: {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                            .font(.title2)
                            .foregroundColor(.gray)
                            .padding(.leading, 5)
                    }
                    Menu {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Date")
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Status")
                        })
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Priority")
                        })
                    } label: {
                        Image(systemName: "arrow.up.arrow.down.circle")
                            .font(.title2)
                            .foregroundColor(.gray)
                            .padding(.leading, 5)
                    }
                }
                .padding(.top,0)
                Spacer()
                
                ScrollView {
                    LazyVGrid(columns: columns, alignment: .center, spacing: 5) {
                        ForEach(items, id: \.self) {item in
                           CustomCellView(item: item)
                        }
                    }
                    .padding(.horizontal)
                }
                
                HStack(spacing: 40) {
                    Spacer()
                    Button(action: {}, label: {
                        Text("Help")
                        .font(.headline)
                        .foregroundColor(.black)
                    })
                    Spacer()
                    Button(action: {}, label: {
                        Text("FeedBack")
                        .font(.headline)
                        .foregroundColor(.black)
                    })
                    Spacer()
                   
                }
                .padding(.vertical, 10)
                .background(Color(.systemGray6))
                    
            }
            .navigationBarItems(leading: HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 60, content: {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack {
                        Image(systemName: "chevron.backward")
                        Text("Back")
                    }
                    
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack {
                        Image(systemName: "line.horizontal.3.decrease.circle")
                        Text("Filter")
                    }
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("Concern")
                    }
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    VStack {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                })
            })

        )}
        .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
        
      
        
    }
}


struct CustomCellView: View {
    
    let item: Int
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(red: 0.184, green: 0.788, blue: 0.696))
                .frame(width: 200, height: 290)
            VStack(alignment: .leading, spacing: 10, content: {
                Text("Customer Name")
                    .foregroundColor(.white)
                Text("Concern ID")
                    .foregroundColor(.white)
                Text("Concern Type")
                    .foregroundColor(.white)
                Text("Date")
                    .foregroundColor(.white)
                Text("Concern Description")
                    .foregroundColor(.white)
                Text("Concern Status")
                    .foregroundColor(.white)
                Text("Priority Level")
                    .foregroundColor(.white)
                Text("Assignee")
                    .foregroundColor(.white)
                Text("Action Required")
                    .foregroundColor(.white)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("View Details")
                        .foregroundColor(.black)
                })
            })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
