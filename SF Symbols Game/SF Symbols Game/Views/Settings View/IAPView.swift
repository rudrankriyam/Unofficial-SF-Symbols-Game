//
//  IAPView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 01/04/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI
import Purchases

struct IAPView: View {
    @EnvironmentObject private var subscriptionManager: SubscriptionManager

    var body: some View {
        VStack {
            Text("Tip Jar")
                .largeTitleText(topPadding: -37)
                .padding(.horizontal)

            VStack(alignment: .leading) {
                Text("If you love the game, you can leave a tip to cover development cost! Any tip helps a lot!")
                    .font(weight: .semiBold)
            }
            .padding()

            ScrollView {
                ForEach(subscriptionManager.packages, id: \.identifier) { product in
                    Button(action: {
                        subscriptionManager.purchase(product: product)
                    }) {
                        IAPRow(product: product)
                    }
                }
                .padding(.vertical)
            }
        }
        .alert(isPresented: $subscriptionManager.showSuccessAlert) {
            Alert(title: Text("You're AMAZING!"), dismissButton: .default(Text("I am!")))
        }
    }
}

struct IAPRow: View {
    var product: Purchases.Package

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(product.product.localizedTitle).bold()
                Text(product.product.localizedDescription)
            }

            Spacer()

            Text(product.localizedPriceString).bold()
        }
        .font()
        .foregroundColor(.primary)
        .padding(8)
        .frame(maxWidth: .infinity, alignment: .leading)
        .modifier(BackgroundModifier())
        .padding(.horizontal)
    }
}

struct IAPView_Previews: PreviewProvider {
    static var previews: some View {
        IAPView()
    }
}

class SubscriptionManager: ObservableObject {
    static let shared = SubscriptionManager()

    @Published var packages: [Purchases.Package] = []
    @Published var inPaymentProgress = false
    @Published var showSuccessAlert = false

    init() {
        Purchases.debugLogsEnabled = true
        Purchases.configure(withAPIKey: "API KEY")
        Purchases.shared.offerings { (offerings, error) in
            if let packages = offerings?.current?.availablePackages {
                self.packages = packages
            }
        }
    }

    func purchase(product: Purchases.Package) {
        guard !inPaymentProgress else { return }
        inPaymentProgress = true
        Purchases.shared.purchasePackage(product) { (_, purchaserInfo, _, _) in
            self.inPaymentProgress = false

            if purchaserInfo?.entitlements["Tip"]?.isActive == true || purchaserInfo?.entitlements["Big"]?.isActive == true ||
                purchaserInfo?.entitlements["Huge"]?.isActive == true {
                self.showSuccessAlert.toggle()
            }
        }
    }
}
