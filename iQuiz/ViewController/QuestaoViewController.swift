//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Vinicius Wessner on 30/09/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0

    //Padronizacao do titulo
    @IBOutlet weak var TituloQuestaoLabel: UILabel!
    //Padronizacao dos botoes
    @IBOutlet var botoesdasrespostas: [UIButton]!
    
    //funcao para captar a tag de cada botao
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = questoes[numeroQuestao].respostacorreta == sender.tag
        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerde
        }else{
            sender.backgroundColor = UIColor.corDeFundoVermelho

        }
        
        if numeroQuestao < questoes.count - 1{
            numeroQuestao += 1

            Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
            
        }else{
            navegaParaTelaDeDesempenho()
            
        }
        
        func navegaParaTelaDeDesempenho(){
            performSegue(withIdentifier: "irParaTelaDesempenho", sender: nil)
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        //chamar aqui os metodos
        configuraLayout()
        configurarQuestao()
    }
    
    func configuraLayout(){
        TituloQuestaoLabel.numberOfLines = 0
        // Escondecbotao de retornar a view anterior
         navigationItem.hidesBackButton = true
        // For para carregar todos os botoes e arredondar o canto
        for botao in botoesdasrespostas {
            botao.layer.cornerRadius = 12.0
        }
     }
    
    @objc func configurarQuestao(){
        TituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        
        
        for botao in botoesdasrespostas{
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
    
    // Fazendo a transsicao entre as telas
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else{
            return
        }
        //Passando o parametro pontuacao para a tela desempenho
        desempenhoVC.pontuacao = pontuacao
    }

    


}
