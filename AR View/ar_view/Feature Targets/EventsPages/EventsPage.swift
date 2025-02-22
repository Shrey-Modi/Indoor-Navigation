////
////  EventsPage.swift
////  ar_view
////
////  Created by Sara Chin on 3/11/24.
////
//
//import Foundation
//import SwiftUI
//
////func setupSceneViewConstraints() {
////    sceneView.translatesAutoresizingMaskIntoConstraints = false
////    NSLayoutConstraint.activate([
////        sceneView.topAnchor.constraint(equalTo: view.topAnchor),
////        sceneView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
////        sceneView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
////        sceneView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
////    ])
////}
//
//
//
//
//struct EventsView: View {
//    @State private var isClicked = false
//
//    var body: some View {
//        NavigationStack {
//            ZStack {
////                LinearGradient(gradient: Gradient(colors: [.white, .blue]),
////                               startPoint: .topLeading, endPoint: .bottomTrailing)
////                    .edgesIgnoringSafeArea(.all)
//
//                VStack(spacing: 30) {
//                    Text("Events")
//                        .bold()
//                        .font(.system(size: 32, weight: .heavy, design: .default))
//                        .foregroundColor(.white)
//                        .frame(maxWidth: .infinity, alignment: .center)
//                    Spacer()
//                    Grid(horizontalSpacing: 30, verticalSpacing: 150) {
//                        GridRow {
//                            Button(action: {
//                                self.isClicked = true
//                            }) {
//                                textLabelStylize(text: "My Events", color: .white)
//                            }
//                            .buttonStyle(CircleButtonStyle())
//
//                            NavigationLink(destination: CalendarView()) {
//                                textLabelStylize(text: "My Calendar", color: .white)
//                            }
//                            .buttonStyle(CircleButtonStyle())
//                        }
//                        GridRow {
//                            NavigationLink(destination: AllEventsView()) {
//                                textLabelStylize(text: "All Events", color: .white)
//                            }
//                            .buttonStyle(CircleButtonStyle())
//
//                            Button(action: {
//                                self.isClicked = true
//                            }) {
//                                textLabelStylize(text: "Office Hours", color: .white)
//                            }
//                            .buttonStyle(CircleButtonStyle())
//                        }
//                        GridRow {
//                            NavigationLink(destination: SwipeActionView()) {
//                                textLabelStylize(text: "Inbox Test", color: .white)
//                            }
//                            .buttonStyle(CircleButtonStyle())
//
//                            NavigationLink(destination: ClubEventsView()) {
//                                textLabelStylize(text: "Club Events", color: .white)
//                            }
//                            .buttonStyle(CircleButtonStyle())
//                        }
//
//                        Spacer()
//                    }
//                    .frame(maxHeight: .infinity)
//                }
//            }
////            .background(.systemBackground)
//
//        }
//    }
//}
//
//func textLabelStylize(text: String, color: Color) -> some View{
//    let textObj: some View = Text(text)
//        .bold()
//        .font(.system(size: 20))
//        .foregroundColor(color)
////        .backgroundColor(.green)
////        .padding()
////        .cornerRadius(10)
//    
//    return textObj
//}
//
//
//
//struct CircleButtonStyle: ButtonStyle {
//    func makeBody(configuration: Self.Configuration) -> some View {
//        configuration.label
//            .font(.system(size: 16)) // Adjusted font size
//            .foregroundColor(.white)
//            .padding(20) // Adjust padding to ensure the text fits within the circle
//            .background(
//                Circle()
//                    .fill(Color.offBlue)
//                    .frame(width: 150, height: 150) // Explicitly size the circle
//                    .shadow(color: Color.black.opacity(configuration.isPressed ? 0.2 : 0.7), radius: 10, x: configuration.isPressed ? -5 : 10, y: configuration.isPressed ? -5 : 10)
//                    .shadow(color: Color.white.opacity(configuration.isPressed ? 0.7 : 0.2), radius: 10, x: configuration.isPressed ? 10 : -5, y: configuration.isPressed ? 10 : -5)
//                
//            )
//    }
//}
//extension Color {
//    static let offBlue = Color(red: 0.271, green: 0.557, blue: 0.969)
//    static let offGreen = Color(red: 0.55, green: 0.65, blue: 0.56)
////    static let offB = Color(red: 0.55, green: 0.65, blue: 0.56)
//
//}
//
//
//
//
//
import SwiftUI

struct EventsView: View {
    @State private var isClicked = false

    var body: some View {
        NavigationStack {
            ZStack {
                Color.offBlue.ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("Events")
                        .bold()
                        .font(.system(size: 32, weight: .heavy, design: .default))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .center)
//                        .padding(.top, 40)
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 10) {
                            NavigationLink(destination: MyEventsView()) {
                                RectangularButtonView(text: "My Events")
                            }
                            NavigationLink(destination: CalendarView()) {
                                RectangularButtonView(text: "My Calendar")
                            }
                            NavigationLink(destination: AllEventsView()) {
                                RectangularButtonView(text: "All Events")
                            }
                            NavigationLink(destination: OfficeHoursView()) {
                                RectangularButtonView(text: "Office Hours")
                            }
                            NavigationLink(destination: SwipeActionView()) {
                                RectangularButtonView(text: "Inbox Test")
                            }
                            NavigationLink(destination: ClubEventsView()) {
                                RectangularButtonView(text: "Club Events")
                            }
                        }
                    }
                    .padding(.horizontal, 10)
//                    .padding(.bottom, 40)
                }
            }
        }
    }
}

struct RectangularButtonView: View {
    let text: String

    var body: some View {
        Text(text)
            .bold()
            .font(.system(size: 25))
            .foregroundColor(.offBlue)
            .padding(20)
            .frame(height: 240)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(.white)
            )
    }
}

extension Color {
    static let offBlue = Color(red: 0.271, green: 0.557, blue: 0.969)
}
