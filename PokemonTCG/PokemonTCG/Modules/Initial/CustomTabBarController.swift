//
//  CustomTabBarController.swift
//  PokemonTCG
//
//  Created by Adrián Bolaños Ríos on 24/04/2021.
//

import UIKit

class CustomTabBarController: UITabBarController {

    // Creamos dos propiedades perezosas (lazy var) para cada uno de los controladores que tenemos
    lazy var allCardTabBar: UIViewController = {
        let allCardTab = CardListViewController()
        let tabBarItem = UITabBarItem(title: "all.cards".localize(), image: nil, selectedImage: nil)
        allCardTab.tabBarItem = tabBarItem
        return allCardTab
    }()

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.viewControllers = [allCardTabBar]
    }

}