//
//  UploadPhotoView.swift
//  DeliveryFoodUI
//
//  Created by Aldair Raul Cosetito Coral on 5/11/21.
//

import SwiftUI

struct UploadPhotoView: View {
    
    //MARK: - Properties
    @State private var selectedImage: UIImage?
    @State private var isDisplayed = false
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .topLeading) {
                VStack {
                    Image("PatternBg2")
                        .resizable()
                        .scaledToFit()
                        .opacity(0.2)
                    Spacer()
                }
                
                VStack(alignment: .leading, spacing: 20) {
                    VStack(alignment: .leading) {
                        Button(action: {}, label: {
                            Image("ic_backbutton")
                                .padding(EdgeInsets(top: 14, leading: 17, bottom: 14, trailing: 17))
                        })
                        .frame(width: 45, height: 45, alignment: .center)
                        .background(Color.orangeBackButton)
                        .cornerRadius(15.0)
                    }
                    .padding(.horizontal, 25)
                    
                    VStack(alignment: .leading, spacing: 19) {
                        Text("Upload Your Photo Profile")
                            .font(.custom("BentonSans Bold", size: 25))
                        Text("This data will be displayed in your account profile for security")
                            .font(.custom("BentonSans Book", size: 12))
                    }
                    .padding(.horizontal, 25)
                    
                    VStack(alignment: .center, spacing: 20) {
                        Button(action: {
                            self.sourceType = .photoLibrary
                            self.isDisplayed.toggle()
                        }, label: {
                            HStack {
                                Spacer()
                                VStack(alignment: .center, spacing: 10) {
                                    Image("ic_gallery")
                                    Text("From Gallery")
                                        .font(.custom("BentonSans Bold", size: 14))
                                        .foregroundColor(Color.black)
                                }
                                Spacer()
                            }
                        })
                        .frame(width: .infinity, height: 129, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(15.0)
                        .shadow(color: .gray.opacity(0.2), radius: 22, x: 1, y: 1)
                        
                        Button(action: {
                            self.sourceType = .camera
                            self.isDisplayed.toggle()
                        }, label: {
                            HStack {
                                Spacer()
                                VStack(alignment: .center, spacing: 10) {
                                    Image("ic_camera")
                                    Text("Take Photo")
                                        .font(.custom("BentonSans Bold", size: 14))
                                        .foregroundColor(Color.black)
                                }
                                Spacer()
                            }
                        })
                        .frame(width: .infinity, height: 129, alignment: .center)
                        .background(Color.white)
                        .cornerRadius(15.0)
                        .shadow(color: .gray.opacity(0.2), radius: 22, x: 1, y: 1)
                    }
                    .padding(.horizontal, 25)
                    
                    Spacer()
                    
                    HStack(alignment: .center) {
                        Spacer()
                        Button(action: {}, label: {
                            Text("Next")
                                .font(.custom("BentonSans Bold", size: 16))
                                .foregroundColor(Color.white)
                        })
                        .frame(width: 157, height: 57, alignment: .center)
                        .background(Color.green)
                        .cornerRadius(15.0)
                        Spacer()
                    }
                    .padding(.vertical, 60)
                }
                .padding(.vertical, 38)
                
                
                //ImageZone
                if let image = self.selectedImage {
                    HStack(alignment: .center) {
                        Spacer()
                        ZStack(alignment: .topTrailing) {
                            Image(uiImage: image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 245, height: 238, alignment: .center)
                                .clipShape(RoundedRectangle(cornerRadius: 22.0))
                            
                            Button(action: {
                                self.selectedImage = nil
                            }) {
                                ZStack(alignment: .center) {
                                    Circle()
                                        .frame(width: 31, height: 31, alignment: .center)
                                        .foregroundColor(.appWhiteBg001.opacity(0.5))
                                    
                                    Image("ic_close")
                                        .resizable()
                                        .frame(width: 13, height: 13, alignment: .center)
                                }
                            }
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 0, trailing: 11))
                            
                        }
                        Spacer()
                    }
                    .padding(.top, 100)
                }
                
            }
            .ignoresSafeArea()
            .navigationBarTitle("None")
            .sheet(isPresented: self.$isDisplayed) {
                ImagePickerView(selectedImage: self.$selectedImage,
                                sourceType: self.$sourceType)
            }
        }
    }
}

struct UploadPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPhotoView()
    }
}
