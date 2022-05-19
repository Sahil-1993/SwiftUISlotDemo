
import SwiftUI

struct ContentView: View {
    
    @State  var creditScore = 0
    @State  var slot1 = "image1"
    @State  var slot2 = "image2"
    @State  var slot3 = "image3"
    
    var body: some View {
        ZStack{
            
            Rectangle().foregroundColor(AppColor.darkYellow).edgesIgnoringSafeArea(.all)
            Rectangle().foregroundColor(AppColor.lightYellow).rotationEffect(Angle(degrees: 45)).edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                HStack {
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                    Text(AppStrings.appTitle)
                        .font(.subheadline)
                        .foregroundColor(Color.white)
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                }.scaleEffect(1.5)
                
                Spacer()
                
                // Credits Counter
                Text("Credits " + String(creditScore))
                    .foregroundColor(Color.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(20.0)
                
                Spacer()
                //Cards
                HStack{
                    Spacer()
                    Image(slot1)
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                   
                    Image(slot2)
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                   
                    Image(slot3)
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    ViewModel().checkRandomNumbers(contentView: self)
                }) {
                    Text("Spin")
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.all, 10)
                        .padding([.leading, .trailing], 20)
                        .background(.pink)
                        .cornerRadius(20.0)
                }
                Spacer()
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
