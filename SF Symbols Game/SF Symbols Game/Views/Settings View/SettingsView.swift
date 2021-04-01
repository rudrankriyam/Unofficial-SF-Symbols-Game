//
//  SettingsView.swift
//  SF Symbols Game
//
//  Created by Rudrank Riyam on 29/03/21.
//  Copyright © 2021 Rudrank Riyam. All rights reserved.
//

import SwiftUI
import MessageUI
import RRSettingsKit
import RRComponentsKit

struct SettingsView: View {
    let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String
    @State var bugResult: Result<MFMailComposeResult, Error>? = nil
    @State var featureResult: Result<MFMailComposeResult, Error>? = nil
    @State var showingBugEmail = false
    @State var showingFeatureEmail = false
    @State var showMailBugAlert = false
    @State var showMailFeatureAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Settings").largeTitleText()
                
                ScrollView {
//                    VStack(alignment: .leading) {
//                        SettingsNavigationRow(imageName: "hourglass", title: "Tip Jar", destination: IAPView().environmentObject(SubscriptionManager.shared))
//                    }
//                    .modifier(BackgroundModifier())
                    
                    VStack(alignment: .leading) {
                        SettingsActionRow(imageName: "pencil.and.outline", title: "Write a review", action: writeReview)
                        
                        SettingsActionRow(imageName: "wand.and.stars", title: "Feature request") {
                            if MFMailComposeViewController.canSendMail() {
                                self.showingFeatureEmail.toggle()
                            }  else if let emailUrl = self.createEmailUrl(to: String.email, subject: "Feature request for SF Symbols Game!", body: "Hello, I have this idea ") {
                                UIApplication.shared.open(emailUrl)
                            } else {
                                self.showMailFeatureAlert = true
                            }
                        }
                        .alert(isPresented: $showMailFeatureAlert) {
                            Alert(title: Text("No Mail Accounts"), message: Text("Please set up a Mail account in order to send email"), dismissButton: .default(Text("OK")))
                        }
                        .sheet(isPresented: self.$showingFeatureEmail) {
                            MailView(isShowing: self.$showingFeatureEmail, result: self.$featureResult, subject: "Feature request for SF Symbols Game!", message: "Hello, I have this idea ", recipientEmail: String.email)
                        }
                        
                        SettingsActionRow(imageName: "tornado", title: "Report a bug") {
                            if MFMailComposeViewController.canSendMail() {
                                self.showingBugEmail.toggle()
                            } else if let emailUrl = self.createEmailUrl(to: String.email, subject: "BUG in SF Symbols Game!", body: "Oh no, there's a bug ") {
                                UIApplication.shared.open(emailUrl)
                            } else {
                                self.showMailBugAlert = true
                            }
                        }
                        .alert(isPresented: $showMailBugAlert) {
                            Alert(title: Text("No Mail Accounts"), message: Text("Please set up a Mail account in order to send email"), dismissButton: .default(Text("OK")))
                        }
                        .sheet(isPresented: self.$showingBugEmail) {
                            MailView(isShowing: self.$showingBugEmail, result: self.$bugResult, subject: "BUG in SF Symbols Game!", message: "Oh no, there's a bug ", recipientEmail: String.email)
                        }
                        
                        // MARK: - APP VERSION
                        GenericRow(imageName: "info.circle", title: "App version", version: appVersion!)
                    }
                    .modifier(BackgroundModifier())
                    
                    VStack(alignment: .leading) {
                        // MARK: - PERSONAL TWITTER ACCOUNT
                        Button(action: {
                            self.openTwitter(twitterURLApp: String.personalTwitterApp, twitterURLWeb: String.personalTwitterWeb)
                        }, label: {
                            SettingsRow(imageName: "textbox", title: "Developer's Twitter")
                        })
                    }
                    .modifier(BackgroundModifier())
                    AboutView(title: "MADE WITH ❤️ BY RUDRANK RIYAM")
                        .font()
                        .accessibility(label: Text("MADE WITH LOVE BY RUDRANK RIYAM"))
                        .padding(.bottom)
                }
            }
            .padding(.horizontal)
            .navigationBarHidden(true)
        }
    }
    
    private func createEmailUrl(to: String, subject: String, body: String) -> URL? {
        let subjectEncoded = subject.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        let bodyEncoded = body.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        
        let gmailUrl = URL(string: "googlegmail://co?to=\(to)&subject=\(subjectEncoded)&body=\(bodyEncoded)")
        let outlookUrl = URL(string: "ms-outlook://compose?to=\(to)&subject=\(subjectEncoded)")
        let yahooMail = URL(string: "ymail://mail/compose?to=\(to)&subject=\(subjectEncoded)&body=\(bodyEncoded)")
        let sparkUrl = URL(string: "readdle-spark://compose?recipient=\(to)&subject=\(subjectEncoded)&body=\(bodyEncoded)")
        
        if let gmailUrl = gmailUrl, UIApplication.shared.canOpenURL(gmailUrl) { return gmailUrl }
        else if let outlookUrl = outlookUrl, UIApplication.shared.canOpenURL(outlookUrl) { return outlookUrl }
        else if let yahooMail = yahooMail, UIApplication.shared.canOpenURL(yahooMail){ return yahooMail }
        else if let sparkUrl = sparkUrl, UIApplication.shared.canOpenURL(sparkUrl) { return sparkUrl }
        return nil
    }
    
    
    private func openTwitter(twitterURLApp: String, twitterURLWeb: String) {
        let twUrl = URL(string: twitterURLApp)!
        let twUrlWeb = URL(string: twitterURLWeb)!
        if UIApplication.shared.canOpenURL(twUrl){
            UIApplication.shared.open(twUrl, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.open(twUrlWeb, options: [:], completionHandler: nil)
        }
    }
    
    private func writeReview() {
        var components = URLComponents(url: String.appURL, resolvingAgainstBaseURL: false)
        components?.queryItems = [URLQueryItem(name: "action", value: "write-review")]
        guard let writeReviewURL = components?.url else { return }
        UIApplication.shared.open(writeReviewURL)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct GenericRow: View {
    var imageName: String
    var title: String
    var version: String? = nil

    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: imageName)
                .font(.headline)
                .foregroundColor(.brandPurple)
                .frame(minWidth: 25, alignment: .center)
                .accessibility(hidden: true)

            Text(title).font()

            Spacer()

            if let version = version {
                Text(version).font(weight: .bold)
            }
        }
        .accessibilityElement(children: .combine)
        .padding(.vertical, 10)
        .foregroundColor(.primary)
    }
}

struct HeaderView: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundColor(.secondary).font(style: .footnote)
            .frame(minWidth: 100, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 16)
    }
}

struct AboutView: View {
    var title: String
    var body: some View {
        Text(title)
            .foregroundColor(.secondary)
            .font(style: .caption1)
            .frame(minWidth: 100, maxWidth: .infinity, alignment: .center)
    }
}


struct MailView: UIViewControllerRepresentable {
    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?
    let subject: String
    let message: String
    let recipientEmail: String
    
    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {
        @Binding var isShowing: Bool
        @Binding var result: Result<MFMailComposeResult, Error>?
        
        init(isShowing: Binding<Bool>, result: Binding<Result<MFMailComposeResult, Error>?>) {
            _isShowing = isShowing
            _result = result
        }
        
        func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
            defer { isShowing = false }
            guard error == nil else {
                self.result = .failure(error!)
                return
            }
            self.result = .success(result)
        }
    }
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(isShowing: $isShowing, result: $result)
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let mailViewController = MFMailComposeViewController()
        mailViewController.setToRecipients([recipientEmail])
        mailViewController.setSubject(subject)
        mailViewController.setMessageBody(message, isHTML: false)
        mailViewController.mailComposeDelegate = context.coordinator
        return mailViewController
    }
    
    func updateUIViewController(_ uiViewController: MFMailComposeViewController, context: UIViewControllerRepresentableContext<MailView>) {
    }
}

struct BackgroundModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.horizontal)
            .padding(.vertical, 8)
            .background(RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(Color(.secondarySystemBackground)))
            .padding(.bottom, 6)
    }
}

extension String {
    static var appURL = URL(string: "https://apps.apple.com/app/id1507692602")!
    static var personalTwitterApp = "twitter://user?screen_name=rudrankriyam"
    static var personalTwitterWeb = "https://www.twitter.com/rudrankriyam"
    static var email = "rudrankriyam@gmail.com"
}
