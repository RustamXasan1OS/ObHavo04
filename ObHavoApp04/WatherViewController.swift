//
//  ViewController.swift
//  ObHavoApp04
//
//  Created by Rustam Xasan on 11/11/22.
//

import UIKit

class WatherViewController: UIViewController {
    
    let backgroundView = UIImageView()
    let rootStackView = UIStackView()
    let searchStackView = UIStackView()
    //search
    let locationButton = UIButton()
    let searchButton = UIButton()
    let searchTextField = UITextField()
    //weather
    let conditationImageView = UIImageView()
    let temperatureLabel = UILabel()
    let cityLabel  = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    style()
    layout()
    }
}

extension WatherViewController {
    func style() {
        
        backgroundView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.image = UIImage(named: "background")
        backgroundView.contentMode = .scaleAspectFill
        
        rootStackView.translatesAutoresizingMaskIntoConstraints = false
        rootStackView.axis = .vertical
        rootStackView.alignment = .trailing
        rootStackView.spacing = 10
        
        searchStackView.translatesAutoresizingMaskIntoConstraints = false
        searchStackView.spacing = 8
        
        locationButton.translatesAutoresizingMaskIntoConstraints = false
        locationButton.setBackgroundImage(UIImage(systemName: "location.viewfinder"), for: .normal)
        locationButton.tintColor = .label
        
        searchButton.translatesAutoresizingMaskIntoConstraints = false
        searchButton.setBackgroundImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .label
        
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchTextField.font = UIFont.preferredFont(forTextStyle: .title1)
        searchTextField.placeholder = "Search"
        searchTextField.textAlignment = .right
        searchTextField.borderStyle = .roundedRect
        searchTextField.backgroundColor  = .systemFill
        
        conditationImageView.translatesAutoresizingMaskIntoConstraints = false
        conditationImageView.image = UIImage(systemName: "sun.max.fill")
        conditationImageView.tintColor = .systemYellow
        
        temperatureLabel.translatesAutoresizingMaskIntoConstraints = false
        temperatureLabel.font = UIFont.systemFont(ofSize: 50)
        //o'chirildi
//        temperatureLabel.text = "15°C"
//        temperatureLabel.textColor = .systemOrange
        //03
        temperatureLabel.attributedText = makeTemoeratureText(with: "21")
        
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
//        cityLabel.text = "TashkentCity"
//        cityLabel.textColor = .systemBlue
        //04
        cityLabel.attributedText = makeCityText(with: "Tashkent")
        
    }
    //01
    private func makeTemoeratureText(with temperature: String) -> NSAttributedString {
        
        var boldTextAttributes = [NSAttributedString.Key:AnyObject]()
        boldTextAttributes[.foregroundColor] = UIColor.systemIndigo
        boldTextAttributes[.font] = UIFont.boldSystemFont(ofSize: 80)
        
        var plainTextAtributes = [NSAttributedString.Key:AnyObject]()
        plainTextAtributes[.foregroundColor] = UIColor.systemOrange
        plainTextAtributes[.font] = UIFont.systemFont(ofSize: 50)
        
        let text = NSMutableAttributedString(string: temperature, attributes: boldTextAttributes)
        text.append(NSAttributedString(string: "°C", attributes: plainTextAtributes))
        
        return text
    }
    //02
    private func makeCityText(with City: String) -> NSAttributedString {
        
        var TashkentTextAttributes = [NSAttributedString.Key:AnyObject]()
        TashkentTextAttributes[.foregroundColor] = UIColor.systemBlue
        TashkentTextAttributes[.font] = UIFont.boldSystemFont(ofSize: 40)
        
        var CityTextAtributes = [NSAttributedString.Key:AnyObject]()
        CityTextAtributes[.foregroundColor] = UIColor.systemGreen
        CityTextAtributes[.font] = UIFont.boldSystemFont(ofSize: 55)
        
        let text = NSMutableAttributedString(string: City, attributes: TashkentTextAttributes)
        text.append(NSAttributedString(string: "City", attributes: CityTextAtributes))
        
        return text
    }
    
    func layout() {
        
        view.addSubview(backgroundView)
        view.addSubview(rootStackView)
        
        rootStackView.addArrangedSubview(searchStackView)
        rootStackView.addArrangedSubview(conditationImageView)
        rootStackView.addArrangedSubview(temperatureLabel)
        rootStackView.addArrangedSubview(cityLabel)
        
        searchStackView.addArrangedSubview(locationButton)
        searchStackView.addArrangedSubview(searchTextField)
        searchStackView.addArrangedSubview(searchButton)
        
        //AutoLayout
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        
            rootStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            rootStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: rootStackView.trailingAnchor, multiplier: 1),
            
            searchStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            searchStackView.leadingAnchor.constraint(equalToSystemSpacingAfter:view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: rootStackView.trailingAnchor, multiplier: 1),
            searchStackView.widthAnchor.constraint(equalTo: rootStackView.widthAnchor),
        
            locationButton.widthAnchor.constraint(equalToConstant: 40),
            locationButton.heightAnchor.constraint(equalToConstant: 40),
        
            searchButton.widthAnchor.constraint(equalToConstant: 40),
            searchButton.heightAnchor.constraint(equalToConstant: 40),
            
            conditationImageView.heightAnchor.constraint(equalToConstant: 150),
            conditationImageView.widthAnchor.constraint(equalToConstant: 150),
            
        ])
    }
}


