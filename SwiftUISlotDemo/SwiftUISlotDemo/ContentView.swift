
import SwiftUI

struct ContentView: View {
    
    @State  var creditScore = 0
    @State  var symbols = ["apple", "cherry", "star"]
    @State  var numbers = [0,1,2]
    @State  var backgroundColor = Color.white
    
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
                    CardView(symbol: $symbols[numbers[0]], backgroundColor: $backgroundColor)
                    CardView(symbol: $symbols[numbers[1]], backgroundColor: $backgroundColor)
                    CardView(symbol: $symbols[numbers[2]], backgroundColor: $backgroundColor)
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
