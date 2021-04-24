//
//  NotificationSettingView.swift
//  ViewDelegate
//
//  Created by Alley Pereira on 23/04/21.
//

import UIKit

class NotificationSettingView: UIView {

    weak var delegate: NotificationSettingsViewDelegate?

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "bell")
        imageView.tintColor = .systemBlue
        return imageView
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.text = "To stay up-to-date enable Push Notifications"
        label.textAlignment = .center
        return label
    }()

    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Enable notifications", for: .normal)
        button.backgroundColor = .systemGreen
        button.setTitleColor(.white, for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageView)
        addSubview(label)
        addSubview(button)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func didTapButton() {
        // Notify controller of tap
        delegate?.didTapEnableButton()
    }

    override func layoutSubviews() {
        super.layoutSubviews()

        let imageSize = bounds.size.width / 2
        imageView.frame = CGRect(x: (bounds.size.width - imageSize)/2,
                                 y: 30,
                                 width: imageSize,
                                 height: imageSize)

        label.frame = CGRect(x: 10,
                             y: 30+imageSize+20,
                             width: frame.size.width-20,
                             height: 100)

        button.frame = CGRect(x: 40,
                              y: 160+imageSize,
                              width: frame.size.width-80,
                              height: 50)
    }
}
