//
//  AppContentView.swift
//  grafico-De-Barras
//
//  Created by Raphael Alkamim on 04/11/21.
//

import SwiftUI

struct AppContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading) {
                    Text("Gráfico de Barras Unicas")
                        .font(.title.bold())
                        .padding()
                    

                    ContentView()
                        .frame(height: 200)
                    
                    
                    Text("Gráficos de barra única são usados ​​para transmitir o valor discreto do item para cada categoria mostrada no eixo oposto.")
                        .padding()
                        .font(.headline)
                    
                }

                VStack(alignment: .leading) {
                    Text("Gráfico de Barras Empilhados")
                        .font(.title.bold())
                        .padding()
                    ContentView2()
                        .frame(height: 200)
                    Text("Alguns gráficos de barras têm cada barra dividida em subpartes que representam os valores discretos para itens que constituem uma parte de todo o grupo. Em um gráfico de barras empilhadas, os segmentos de barra em uma barra de categoria são colocados uns sobre os outros.")
                        .padding()
                        .font(.headline)
                    
                }
                
                VStack(alignment: .leading) {
                    
                    Text("Gráfico de Barras Lado a Lado")
                        .font(.title.bold())
                        .padding()
                    ContentView3()
                        .frame(height: 200)
                    Text("O gráfico de barras lado a lado, são colocadas as barras umas próximas as outras, facilitando a comparação de suas alturas e respectivos valores.")
                        .padding()
                        .font(.headline)
                    
                }
                
                VStack(alignment: .leading) {
                    Text("Outros Exemplos")
                        .font(.title.bold())
                        .padding()
                    ContentView4()
                        .frame(height: 200)
                        
                    Text("Grafico de Barras Unicas, sem eixo X e Y, sem label e com corner radius.")
                        .padding()
                        .font(.headline)
                    
                }
                
                VStack(alignment: .leading) {
                    ContentView5()
                        .frame(height: 200)
                        
                    Text("Grafico de Barras lado a lado, de três barras, com eixo X e Y, label com valores das barras e corner radius.")
                        .padding()
                        .font(.headline)
                    
                }
            } .navigationTitle("Gráfico de Barras")
        }
    }
}
    
    struct AppContentView_Previews: PreviewProvider {
        static var previews: some View {
            AppContentView()
                
        }
    }
