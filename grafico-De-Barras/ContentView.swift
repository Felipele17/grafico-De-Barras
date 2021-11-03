//
//  ContentView.swift
//  grafico-De-Barras
//
//  Created by Felipe Leite on 28/10/21.
//

import SwiftUI

struct ContentView: View {
    var barValuesOne: [CGFloat] = [10, 20, 30 , 40, 100]
    var barValuesTwo: [CGFloat] = [100, 50, 40 , 30, 10]
    var labelValuesOne: [String] = ["A", "B", "C", "D", "E"]
    var labelValuesTwo: [String] = ["E", "D", "P", "B", "A"]
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let centerY = height / 2
////            let scaleX = max / (maxValueY)
//            let scaleY = centerY
            ZStack (alignment: .leading) {
                Text ("Y")
                    .position(x: 50 + 20, y: centerY - 10)
                    .font(.subheadline)
                Text ("X")
                    .position(x: width, y: centerY - 20)
                    .font(.subheadline)
                
                Path {
                    path in
                    path.move(to: CGPoint(x: 50, y: 100 - 10))
                    path.addLine(to: CGPoint(x: 50, y: centerY))
                    path.addLine(to: CGPoint(x: width, y: centerY))
                }.stroke()

            }
            ZStack (alignment: .leading){
//                Color(.black).edgesIgnoringSafeArea(.all)
                VStack {
                    HStack(alignment: .bottom, spacing: 10) {
                        ForEach(0..<barValuesOne.count, id: \.self) {
                            SingleGraphView(colorSingleBar: .pink, colorLabel: .white, textLabel: labelValuesOne[$0], cornerRadiusBar: 5, valueSingleBar: barValuesOne[$0], widthBar: 20)
                        }
                        
                    }.position(x: 140, y: centerY)
                    
//                    HStack(alignment: .bottom, spacing: 10) {
//                        ForEach(0..<barValuesOne.count, id: \.self) {
//                            StackedGraphView(colorBarOne: .green, colorBarTwo: .red, colorLabel: .white, textLabel: labelValuesOne[$0], cornerRadiusBar: 5, valueBarOne: barValuesOne[$0], valueBarTwo: barValuesTwo[$0], widthBar: 20)
//
//                        }
//                    }
//
//                    HStack(alignment: .bottom, spacing: 10) {
//                        ForEach(0..<barValuesOne.count, id: \.self) {
//                            SideGraphView(colorBarOne: .red, colorBarTwo: .blue, colorLabel: .white, textLabelOne: labelValuesOne[$0], textLabelTwo: labelValuesTwo[$0], cornerRadiusBar: 5, valueBarOne: barValuesOne[$0], valueBarTwo: barValuesTwo[$0], widthBar: 20)
//                        }
//
//                    }
                    
                }.padding(.top, 24).animation(.default)
            }
        }
        
    }
}

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    //let normalizer: DataNormalizer = DataNormalizer()
    //normalizer.normalizePoints([], viewSize: Size)
