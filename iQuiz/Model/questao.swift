//
//  questao.swift
//  iQuiz
//
//  Created by Vinicius Wessner on 30/09/23.
//

import Foundation

struct Questao{
    var titulo: String
    var respostas : [String]
    var respostacorreta: Int
}

let questoes: [Questao] = [
    //Armazando todas as perguntas e questoes
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?",
            respostas: ["Expectro Patronum", "Avada Kedavra", "Expelliarmus"],
            respostacorreta: 2),

    Questao(titulo: "Quando foi lançado o filme Avatar 2?",
            respostas: ["2014", "2022", "2023"],
            respostacorreta: 2),

    Questao(titulo: "Quando foi lançado o filme Vingadores Ultimato?",
            respostas: ["2019", "2018", "2017"],
            respostacorreta: 0),
    
    Questao(titulo: "Qual é o primeiro filme da franquia Star Wars?",
            respostas: ["Star Wars: A Ameaça Fantasma","Star Wars: Uma Nova Esperança","Star Wars: O Império Contra-Ataca"],
            respostacorreta: 1),
    
    Questao(titulo: "Qual é o primeiro filme do Universo Cinematográfico Marvel (MCU)?",
            respostas: ["Homem de Ferro", "Capitão América: O Primeiro Vingador", "Thor"],
            respostacorreta: 0),
    
    Questao(titulo: "Qual é o personagem principal de The Office, interpretado por Steve Carell?",
            respostas: ["Michael Scott", "Jim Halpert", "Dwight Schrute"],
            respostacorreta: 2),
    
    Questao(titulo: "Qual é o trabalho de Jay Pritchett na série Modern Family?",
            respostas: ["Médico","Empresário","Advogado"],
            respostacorreta: 1)
]
