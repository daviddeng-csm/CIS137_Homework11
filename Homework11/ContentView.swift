//
//  ContentView.swift
//  Homework11
//  A SwiftUI app with food themed tab views that include simple content about the item on each page
//
//  Assignment #11
//  David Deng
//  October 27, 2024
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Tab 1: Pizza
            PizzaView()
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("Pizza")
                }
            
            // Tab 2: Burger
            BurgerView()
                .tabItem {
                    Image(systemName: "takeoutbag.and.cup.and.straw")
                    Text("Burger")
                }
            
            // Tab 3: Sushi
            SushiView()
                .tabItem {
                    Image(systemName: "fish.fill")
                    Text("Sushi")
                }
        }
        .accentColor(.red)
    }
}

struct PizzaView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "flame.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
                
                Text("Oven Fresh")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                
                Text("🍕")
                    .font(.system(size: 80))
                
                Text("Slice of Heaven!")
                    .font(.title2)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Pizza Shop")
        }
    }
}

struct BurgerView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "takeoutbag.and.cup.and.straw")
                    .font(.system(size: 80))
                    .foregroundColor(.brown)
                
                Text("Perfectly Grilled")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.brown)
                
                Text("🍔")
                    .font(.system(size: 80))
                
                Text("All-American Classic!")
                    .font(.title2)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Burger Joint")
        }
    }
}

struct SushiView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Image(systemName: "fish.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.blue)
                
                Text("Roll with Us")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                
                Text("🍣")
                    .font(.system(size: 80))
                
                Text("Fresh & Delicious!")
                    .font(.title2)
                
                Spacer()
            }
            .padding()
            .navigationTitle("Sushi House")
        }
    }
}

#Preview {
    ContentView()
}
