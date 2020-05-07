//
//  ContentView.swift
//  Comple UI
//
//  Created by Al Amin on 7/5/20.
//  Copyright © 2020 Al Amin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var color = 0
    @State private var height = UIScreen.main.bounds.height
    @State private var width = UIScreen.main.bounds.width
    var body: some View {
        VStack {
            ZStack(alignment: .top) {
                VStack{
                    if color == 0 {
                        Image("lamp1")
                            .resizable()
                            .frame(height: 300)
                    }else{
                        Image("lamp2")
                            .resizable()
                            .frame(height: 300)
                    }
                    
                    HStack(spacing: 20){
                        
                        Button(action: {
                            self.color = 0
                        }) {
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.yellow)
                                        .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 0 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Yellow")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                        
                        Button(action: {
                            self.color = 1
                        }) {
                            VStack(spacing: 8) {
                                ZStack {
                                    Circle()
                                        .fill(Color.orange)
                                        .frame(width: 20, height: 20)
                                    Circle()
                                        .stroke(self.color == 1 ? Color.white : Color.clear, lineWidth: 2)
                                        .frame(width: 30, height: 30)
                                }
                                Text("Orange")
                                    .foregroundColor(.white)
                                    .font(.caption)
                            }
                        }
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 10)
                    
                }
                
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("back")
                            .renderingMode(.original)
                    }
                    .padding(.leading, 10)
                    .padding(.top, height > 800 ? 20 : 10 )
                    
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("cart")
                            .renderingMode(.original)
                            .padding()
                        
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, height > 800 ? 20 : 10 )
                    .background(Color.white)
                    .clipShape(CustomShape(corner: .bottomLeft, radii: 35))
                }
            }
                
            .background(self.color == 0 ? Color.yellow : Color.orange)
            .clipShape(CustomShape(corner: .bottomLeft, radii: 55))
            
            if height > 800 {
                HStack {
                    Text("Melodi Lamp")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("heart")
                            .renderingMode(.original)
                            .padding()
                    }
                    .background(self.color == 0 ? Color.yellow : Color.orange)
                    .clipShape(Circle())
                }
                .padding(.horizontal, 35)
                .padding(.top)
                
                Text("The lampshape provides directional lighting above the dining table and pleasant diffused light throught the room")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.gray)
                    .padding(.horizontal, 30)
                    .padding(.top, 20)
                
                
                HStack(spacing: 15){
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image("mat1")
                                .renderingMode(.original)
                            Text("22 W")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image("mat2")
                                .renderingMode(.original)
                            Text("24 CM")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image("mat3")
                                .renderingMode(.original)
                            Text("26 CM")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        VStack {
                            Image("mat4")
                                .renderingMode(.original)
                            Text("1.4 M")
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                        }
                        .padding()
                    }
                    .background(Color.black.opacity(0.06))
                    .cornerRadius(12)
                }
                .padding(.top, 20)
                Spacer(minLength: 0)
                
            }else{
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        Text("Melodi Lamp")
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image("heart")
                                .renderingMode(.original)
                                .padding()
                        }
                        .background(self.color == 0 ? Color.yellow : Color.orange)
                        .clipShape(Circle())
                    }
                    .padding(.horizontal, 35)
                    .padding(.top, 25)
                    
                    Text("The lampshape provides directional lighting above the dining table and pleasant diffused light throught the room")
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.gray)
                        .padding(.horizontal, 30)
                        .padding(.top, 20)
                    
                    Spacer(minLength: 0)
                    HStack(spacing: 10){
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            VStack {
                                Image("mat1")
                                    .renderingMode(.original)
                                Text("22 W")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            VStack {
                                Image("mat2")
                                    .renderingMode(.original)
                                Text("24 CM")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            VStack {
                                Image("mat3")
                                    .renderingMode(.original)
                                Text("26 CM")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                        
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            VStack {
                                Image("mat4")
                                    .renderingMode(.original)
                                Text("1.4 M")
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                            }
                            .padding()
                        }
                        .background(Color.black.opacity(0.06))
                        .cornerRadius(12)
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 25)
                    Spacer(minLength: 0)
                }
            }
            
            
            
            
           /* HStack {
                Text("Melodi Lamp")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Image("heart")
                        .renderingMode(.original)
                        .padding()
                }
                .background(self.color == 0 ? Color.yellow : Color.orange)
                .clipShape(Circle())
            }
            .padding(.horizontal, 35)
            .padding(.top)
            
            Text("The lampshape provides directional lighting above the dining table and pleasant diffused light throught the room")
                .multilineTextAlignment(.leading)
                .foregroundColor(.gray)
                .padding(.horizontal, 30)
                .padding(.top, 20)
            
            
            HStack(spacing: 15){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    VStack {
                        Image("mat1")
                            .renderingMode(.original)
                        Text("22 W")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    VStack {
                        Image("mat2")
                            .renderingMode(.original)
                        Text("24 CM")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    VStack {
                        Image("mat3")
                            .renderingMode(.original)
                        Text("26 CM")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    VStack {
                        Image("mat4")
                            .renderingMode(.original)
                        Text("1.4 M")
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                    .padding()
                }
                .background(Color.black.opacity(0.06))
                .cornerRadius(12)
            }
            .padding(.top, 20)
            Spacer(minLength: 0) */
            
            HStack {
                Text("$12.99")
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading, 35)
                    .padding(.bottom, 25)
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Add to Cart")
                        .foregroundColor(.black)
                        .padding(.vertical,22)
                        .padding(.horizontal, 35)
                    
                }
                .background(self.color == 0 ? Color.yellow : Color.orange)
                .clipShape(CustomShape(corner: .topLeft, radii: 55))
            }
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden: true)
        .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomShape: Shape {
    var corner: UIRectCorner
    var radii: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
        
        return Path(path.cgPath)
    }
}

class Host: UIHostingController<ContentView> {
    override var prefersHomeIndicatorAutoHidden: Bool {
        return true
    }
}
