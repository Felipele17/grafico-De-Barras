//
//  ContentView.swift
//  grafico-De-Barras
//
//  Created by Felipe Leite on 28/10/21.
//

import SwiftUI

struct ContentView: View {
    var barValuesOne: [CGFloat] = [100, 200, 300 , 400, 500]
    var barValuesTwo: [CGFloat] = [100, 50, 40 , 30, 10]
    var labelValuesOne: [String] = ["A", "B", "C", "D", "E"]
    var labelValuesTwo: [String] = ["E", "D", "P", "B", "A"]
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width - 40
            let height = geometry.size.height
            let centerY = height
            let maxValueOneBar = barValuesOne.max() ?? 0
            
            ZStack(alignment: .center) {
                ZStack (alignment: .bottom) {
                    Text ("Y")
                        .position(x: 50 + 20, y: centerY-maxValueOneBar-10)
                        .font(.subheadline)
                    Text ("X")
                        .position(x: width, y: centerY - 20)
                        .font(.subheadline)
                    
                    Path {
                        path in
                        path.move(to: CGPoint(x: 50, y: centerY - maxValueOneBar))
                        path.addLine(to: CGPoint(x: 50, y: centerY))
                        path.addLine(to: CGPoint(x: width, y: centerY))
                    }.stroke()
                    
                    
                    VStack {
                        HStack(alignment: .bottom, spacing: 10) {
                            ForEach(0..<barValuesOne.count, id: \.self) {
//                                SingleGraphView(colorSingleBar: .pink, colorLabel: .white, textLabel: labelValuesOne[$0], cornerRadiusBar: 0, valueSingleBar: barValuesOne[$0], widthBar: 40)
                                SideGraphView(colorBarOne: .blue, colorBarTwo: .pink, colorLabel: .black, textLabelOne: labelValuesOne[$0], textLabelTwo: labelValuesTwo[$0], cornerRadiusBar: 0, valueBarOne: barValuesOne[$0], valueBarTwo: barValuesTwo[$0], widthBar: 40)
                            }
                        }
                    }
                }
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
