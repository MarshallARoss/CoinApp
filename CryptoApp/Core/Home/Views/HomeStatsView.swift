//
//  HomeStatsView.swift
//  CryptoApp
//
//  Created by Marshall  on 7/26/22.
//

import SwiftUI

struct HomeStatsView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @Binding var showPortfolio: Bool
    
    var body: some View {
        HStack {
            ForEach(vm.statistics) { stat in
                StatisticView(stat: stat)
                    .frame(width: UIScreen.main.bounds.width/3)
            }
        }.frame(width: UIScreen.main.bounds.width,
                alignment: showPortfolio ? .trailing : .leading)
    }
}

struct HomeStatsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeStatsView(showPortfolio: .constant(false))
            HomeStatsView(showPortfolio: .constant(true))
        }
        .environmentObject(dev.homeVM)
    }
}
