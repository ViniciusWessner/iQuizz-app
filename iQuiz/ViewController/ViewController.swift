//
//  ViewController.swift
//  iQuiz
//
//  Created by Vinicius Wessner on 30/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BotaoIniciarQuizz:
        UIButton!
    
    @IBAction func BotaoPressionado(_ sender: Any) {
    }
    
    
    func configuraLayout() {
        BotaoIniciarQuizz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        // Do any additional setup after loading the view.
    }



    
}

