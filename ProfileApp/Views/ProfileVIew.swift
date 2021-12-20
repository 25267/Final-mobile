//
//  ProfileVIew.swift
//  ProfileApp
//
//  Created by Zhanibek on 15.10.2021.
//

import SwiftUI

struct ProfileVIew: View {
    @State var name = ""
    @State var phone = ""
    @State private var showingAlert = false
    var body: some View {
        NavigationView {
            ScrollView {
                
                
                
                VStack {
                    VStack (alignment: .leading, spacing: 15){
                        
                        Text("Имя")
                            .font(.title3)
                            .foregroundColor(.gray)
                        
                        HStack {
                            TextField("имя", text: $name)
                            
                            
                            
                            Button {
                                
                            } label: {
                                Text("Изменить")
                                    .foregroundColor(.gray)
                            }
                            
                        }
                        .font(.title3)
                        .padding(8)
                        .background(Color("Background 3"))
                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        
                        
                        Text("Телефон")
                            .foregroundColor(.gray)
                        
                        TextField("Телефон", text: $phone)
                            .font(.title3)
                            .padding(8)
                            .background(Color("Background 3"))
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        
                        
                    }
                    
                    .padding(15)
                    .background(Color.white)
                    .cornerRadius(20)
                    .shadow(color: Color("Background 4"), radius: 20, x: 0, y: 10)
                    .padding()
                    
                    
                    Button {
                        phone = ""
                        name =  ""
                        showingAlert = true
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .foregroundColor(Color("button-color"))
                                .frame(height: 50)
                            
                            
                            Text("История добавления товара")
                                .foregroundColor(.white)
                        }
                    }
                    .alert("данные успешно сохранены", isPresented: $showingAlert) {
                               Button("OK", role: .cancel) { }
                           }
                    .padding()
                    
                    
                    
                }
                
            }.background(Color("Background 2"))
                .navigationBarTitle("Профиль")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: Button(action: {
                    
                }, label: {
                    Image(systemName: "chevron.right.square")
                        .foregroundColor(.black)
                }))
            
            
        }
        
    }
    
    func ok() {}
}

struct ProfileVIew_Previews: PreviewProvider {
    static var previews: some View {
        ProfileVIew()
    }
}
