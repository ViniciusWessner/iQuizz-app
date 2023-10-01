//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Vinicius Wessner on 01/10/23.
//

import UIKit

class DesempenhoViewController: UIViewController {
    
    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var perentualLabel: UILabel!
    

    @IBOutlet weak var botaoReiniciarQuizz: UIButton!
    
    
    func configurarLayout(){
        botaoReiniciarQuizz.layer.cornerRadius = 12.0
        navigationItem.hidesBackButton = true
    }
    
    func configurarDesempenho(){
        guard let pontuacao = pontuacao else {return}
        resultadoLabel.text = "Voce acertou \(pontuacao) de \(questoes.count) questoes"
        
        let percentual = (pontuacao * 100) / questoes.count
        perentualLabel.text = "Percentual Final: \(percentual)%"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //chamar aqui os metodos
        configurarLayout()
        configurarDesempenho()

    }
}
