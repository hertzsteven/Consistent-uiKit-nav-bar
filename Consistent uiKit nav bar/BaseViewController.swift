//
//  BaseViewController.swift
//  Consistent uiKit nav bar
//
//  Created by Steven Hertz on 4/17/24.
//

import UIKit

class BaseViewController: UIViewController {
    var titleText: String = "Default Title" // Default title text, can be overridden

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        setupNavigationBarLogoAndTitle()
    }

    private func setupNavigationBarLogoAndTitle() {
        // Create an UIImageView with the logo
        let logo = UIImage(named: "logoImage") // Ensure the logo image is in your assets
        let logoImageView = UIImageView(image: logo)
        logoImageView.contentMode = .scaleAspectFit

        // Create a UILabel for the title text next to the logo
        let titleLabel = UILabel()
        titleLabel.text = titleText
        titleLabel.textColor = .white // Set the text color that fits your app's design
        titleLabel.font = UIFont.systemFont(ofSize: 17) // Adjust font size as needed

        // Create a horizontal stack view to hold the logo and title label
        let stackView = UIStackView(arrangedSubviews: [logoImageView, titleLabel])
        stackView.axis = .horizontal
        stackView.spacing = 8 // Adjust the spacing between logo and title as needed
        stackView.alignment = .center

        // Set the frame for the stack view. Adjust the width as needed.
        stackView.frame = CGRect(x: 0, y: 0, width: 200, height: 30) // Adjust width and height as needed

        // Adjust the size of the logo within the stack view
        logoImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true

        // Set the titleView of the navigation item to display the stack view
        self.navigationItem.titleView = stackView
    }
}
