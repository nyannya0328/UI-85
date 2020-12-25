//
//  ContentView.swift
//  UI-85
//
//  Created by にゃんにゃん丸 on 2020/12/25.
//

import SwiftUI

let gradient = LinearGradient(gradient: .init(colors: [.red,.blue]), startPoint: .leading, endPoint: .trailing)
struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    @State var value : CGFloat = 0
    
    
    var body: some View{
        
        
        VStack{
            
            
            ZStack{
                
                HStack{
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "arrow.left")
                            .foregroundColor(.gray)
                            .padding(.all)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    })
                    
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.gray)
                            .padding(.all)
                            .background(Color.white)
                            .clipShape(Circle())
                            .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y: 5)
                            .shadow(color: Color.white, radius: 5, x: -5, y: -5)
                    })
                    
                    
                    
                    
                    
                }
                .padding(.top,30)
                
                
                
                
                Text("Now Playing")
                    .font(.system(size: 30, weight: .heavy))
                    .foregroundColor(.gray)
                
                
                
                
            }
            
            Image("p1")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.horizontal,55)
                .clipShape(Circle())
                .padding(.all,8)
                .background(Color.white.opacity(0.6))
                .clipShape(Circle())
                .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y:5)
                .shadow(color: Color.white, radius: 5, x: 5, y: 5)
                .padding(.top,30)
            
            
            Text("Love")
                .font(.title)
                .foregroundColor(.gray)
                .padding(.top,8)
            
            Text("Again")
                .font(.title)
                .foregroundColor(.gray)
                .padding(.top,25)
            
            HStack{
                
                
                Text("0")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text("3:15")
                    .font(.caption)
                    .foregroundColor(.gray)
                
                
            }
            .padding(.top,25)
            
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center), content: {
                
                Capsule()
                    .fill(Color.gray.opacity(0.3))
                    .frame(height: 5)
                
                ZStack(alignment: Alignment(horizontal: .trailing, vertical: .center), content: {
                    
                    Capsule()
                        .fill(Color.gray.opacity(0.3))
                        .frame(width: value, height: 5)
                    
                    Circle()
                        .fill(Color("c1").opacity(0.7))
                        .frame(width: 10, height: 10)
                        .padding(.all,10)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y:5)
                        .shadow(color: Color.white, radius: 5, x: 5, y: 5)
                    
                    
                    
                    
                })
                
                
                
                
                
            })
            .gesture(DragGesture().onChanged({ (value) in
                if value.location.x <= UIScreen.main.bounds.width - 20 && value.location.x >= 0{
                    
                    
                    self.value = value.location.x
                }
                
                
            }))
            
            
            HStack(spacing:10){
                
                
                
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "backward.fill")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.gray)
                        .padding(.all,25)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y:5)
                        .shadow(color: Color.white, radius: 5, x: 5, y: 5)
                    
                })
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "pause.fill")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.gray)
                        .padding(.all,25)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y:5)
                        .shadow(color: Color.white, radius: 5, x: 5, y: 5)
                    
                })
                Spacer()
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "forward.fill")
                        .font(.system(size: 25, weight: .bold))
                        .foregroundColor(.gray)
                        .padding(.all,25)
                        .background(Color.white)
                        .clipShape(Circle())
                        .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y:5)
                        .shadow(color: Color.white, radius: 5, x: 5, y: 5)
                    
                })
                
                
                
                
                
                
                
                
            }
            .padding(.top,25)
            
            
            HStack{
                
                
                Image("p1")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding(.horizontal,55)
                    .clipShape(Circle())
                    .padding(.all,8)
                    .background(Color.white.opacity(0.6))
                    .clipShape(Circle())
                    .shadow(color: Color("c1").opacity(0.6), radius: 5, x: 5, y:5)
                    .shadow(color: Color.white, radius: 5, x: 5, y: 5)
                    .padding(.bottom,30)
                
                VStack{
                    
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        
                        
                        .clipShape(Circle())
                        .background(
                            Circle().stroke(Color.red,lineWidth: 2)
                        )
                    
                    Image("p1")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(10)
                        
                        
                        .clipShape(Circle())
                        .background(
                            Circle().stroke(gradient,lineWidth: 2)
                        )
                    
                    
                }
            }
            
            
            
            
            
            
            
            
            
        }
        .padding(.all)
        .background(Color.white.edgesIgnoringSafeArea(.all))
        
    }
}
