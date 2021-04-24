//
//  ViewController.swift
//  ViewDelegate
//
//  Created by Alley Pereira on 23/04/21.
//

import UIKit

class ViewController: UIViewController, NotificationSettingsViewDelegate {

    private let notificationView = NotificationSettingView()

    override func viewDidLoad() {
        super.viewDidLoad()
        notificationView.delegate = self
        view.addSubview(notificationView)

    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        notificationView.frame = CGRect(x: 10, y: view.safeAreaInsets.top,
                                        width: view.frame.size.width-20,
                                        height: view.frame.size.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom)
    }

    func didTapEnableButton() {
        let alert = UIAlertController(title: "Enable Notifications",
                                      message: "Some longer message here to tell user to do stuff.",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
        present(alert, animated: true)
    }

}
