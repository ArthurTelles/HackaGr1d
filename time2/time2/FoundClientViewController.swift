//
//  FoundClientViewController.swift
//  time2
//
//  Created by Arthur Telles on 14/07/19.
//  Copyright © 2019 Arthur Telles. All rights reserved.
//

import UIKit
import MessageUI

class FoundClientViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    // Variables declaration
    var clientData: ClientStruct!
    var planIndicated: String!
    var newPlan: Bool = false
    
    // Outlets declaration
    @IBOutlet weak var clientNameLabel: UILabel!
    @IBOutlet weak var clientIDLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clientNameLabel.text = self.clientData.nome
        self.clientIDLabel.text = "ID " + self.clientData.idusuario
        
        let bigBoost = ["Datasets": "emails","q": "doc{09177466561}"]
        APIController.post(withParameters: bigBoost)
        
        let mongeral = """
{
    \"PROPOSTA\": {
        \"NUMERO\": \"0\",
        \"DT_PROTOCOLO\": \"2018-10-08\",
        \"DT_ASSINATURA\": \"2018-10-04\",
        \"DT_INDEXACAO\": \"2018-10-09\",
        \"INSTITUIDOR\": {
            \"NUMERO\": \"01\",
            \"NOME\": \"OAB SC\"
        },
        \"DADOS_PROPONENTE\": {
            \"MATRICULA\": \"0\",
            \"NOME\": \"19-02-19 VALIDAÇÃO HMG 21:44h\",
            \"DT_NASCIMENTO\": \"1994-02-07\",
            \"IDADE\": \"24\",
            \"SEXO\": \"MASCULINO\",
            \"ESTADO_CIVIL\": \"SOLTEIRO\",
            \"CPF\": \"20943154790\",
            \"TITULAR_CPF\": \"true\",
            \"EMAIL\": \"TIAGOGMSILVA@GMAIL.COM\",
            \"RESIDE_BRASIL\": \"true\",
            \"RENDA_MENSAL\": \"5000.00\",
            \"NUM_FILHOS\": \"0\",
            \"PPE\": \"false\",
            \"DOCUMENTOS\": {
                \"DOCUMENTO\": {
                    \"NATUREZA_DOC\": \"RG\",
                    \"DOCUMENTO\": \"36969739-X\",
                    \"ORGAO_EXPEDIDOR\": \"SSP\",
                    \"DATA_EXPEDICAO\": \"2012-07-26\"
                }
            },
            \"ENDERECOS\": {
                \"TP_CORRESPONDENCIA\": \"RESIDENCIAL\",
                \"ENDERECO\": [
                    {
                        \"TIPO\": \"RESIDENCIAL\",
                        \"LOGRADOURO\": \"RUA ANTONIO SPINELLI\",
                        \"NUMERO\": \"158\",
                        \"COMPLEMENTO\": \"CASA\",
                        \"BAIRRO\": \"JARDIM RAFAEL\",
                        \"CIDADE\": \"CAÇAPAVA\",
                        \"ESTADO\": \"SP\",
                        \"CEP\": \"12288540\"
                    }
                ]
            },
            \"TELEFONES\": {
                \"TELEFONE\": [
                    {
                        \"TIPO\": \"CELULAR\",
                        \"DDI\": \"55\",
                        \"DDD\": \"54\",
                        \"NUMERO\": \"991132080\"
                    }
                ]
            },
            \"PROFISSAO\": {
                \"CODIGO\": \"5243-05\",
                \"DESCRICAO\": \"VENDEDOR AMBULANTE\",
                \"CATEGORIA\": \"EMPREGADO\",
                \"EMPRESA\": {
                    \"NOME\": \"MONGERAL AEGON\"
                }
            }
        },
        \"PLANOS\": {
            \"VL_TOTAL\": \"188.79\",
            \"PLANO\": [
                {
                    \"CODIGO\": \"780\",
                    \"NOME\": \"DOENÇAS GRAVES\",
                    \"VL_AP_INICIAL\": \"0.00\",
                    \"VL_PORTAB\": \"0.00\",
                    \"TP_TRIBUTACAO\": \"NENHUM\",
                    \"DT_CONCESSAO\": \"1900-01-01\",
                    \"PRAZO_CERTO\": \"0\",
                    \"PRAZO_DECRESCIMO\": \"0\",
                    \"COBERTURAS\": {
                        \"COBERTURA\": {
                            \"CODIGO\": \"34\",
                            \"VL_CONTRIB\": \"53.58\",
                            \"VL_COBERTURA\": \"120000.00\"
                        }
                    }
                },
                {
                    \"CODIGO\": \"537\",
                    \"NOME\": \"INVALIDEZ POR ACIDENTE\",
                    \"VL_AP_INICIAL\": \"0.00\",
                    \"VL_PORTAB\": \"0.00\",
                    \"TP_TRIBUTACAO\": \"NENHUM\",
                    \"DT_CONCESSAO\": \"1900-01-01\",
                    \"PRAZO_CERTO\": \"0\",
                    \"PRAZO_DECRESCIMO\": \"0\",
                    \"COBERTURAS\": {
                        \"COBERTURA\": {
                            \"CODIGO\": \"64\",
                            \"VL_CONTRIB\": \"15.21\",
                            \"VL_COBERTURA\": \"200000.00\"
                        }
                    }
                },
                {
                    \"CODIGO\": \"801\",
                    \"NOME\": \"VGBL VIDA TODA\",
                    \"VL_AP_INICIAL\": \"0.00\",
                    \"VL_PORTAB\": \"0.00\",
                    \"TP_TRIBUTACAO\": \"REGRESSIVA\",
                    \"DT_CONCESSAO\": \"2045-01-29\",
                    \"PRAZO_CERTO\": \"0\",
                    \"FUNDOS\": {
                        \"FUNDO\": [
                            {
                                \"CODIGO\": \"10001\",
                                \"NOME\": \"MONGERAL AEGON RF PREVIDÊNCIA\",
                                \"PC_CONTRIB\": \"100.00\",
                                \"PC_APORTE\": \"0.00\",
                                \"PC_PORTAB\": \"0.00\"
                            },
                            {
                                \"CODIGO\": \"10005\",
                                \"NOME\": \"MONGERAL AEGON RV 20 PRIVATE PREVIDÊNCIA\",
                                \"PC_CONTRIB\": \"0.00\",
                                \"PC_APORTE\": \"0.00\",
                                \"PC_PORTAB\": \"0.00\"
                            },
                            {
                                \"CODIGO\": \"10006\",
                                \"NOME\": \"MONGERAL AEGON RV 45 PRIVATE PREVIDÊNCIA\",
                                \"PC_CONTRIB\": \"0.00\",
                                \"PC_APORTE\": \"0.00\",
                                \"PC_PORTAB\": \"0.00\"
                            }
                        ]
                    },
                    \"COBERTURAS\": {
                        \"COBERTURA\": {
                            \"CODIGO\": \"1\",
                            \"VL_CONTRIB\": \"120.00\",
                            \"VL_COBERTURA\": \"0.00\"
                        }
                    }
                }
            ]
        },
        \"BENEFICIARIOS\": {
            \"BENEFICIARIO\": [
                {
                    \"NOME\": \"MICHELE ROSA\",
                    \"NASCIMENTO\": \"1974-07-28\",
                    \"PARENTESCO\": \"CONJUGE\",
                    \"PARTICIPACAO\": \"30.00\",
                    \"CD_PLANO\": \"102\"
                }
            ]
        },
        \"DADOS_COBRANCA\": {
            \"PERIODICIDADE\": \"MENSAL\",
            \"TIPO_COBRANCA\": \"BOLETO\",
            \"DIA_VENCIMENTO\": \"25\",
            \"COMP_DEBITO\": \"10/2018\",
            \"NUM_CONVENIO\": \"0\"
        },
        \"USO_MONGERAL\": {
            \"CONV_ADESAO\": \"AD0332\",
            \"ACAO_MARKETING\": \"0493\",
            \"ALTERNATIVA\": \"1\",
            \"SUCURSAL\": \"F22\",
            \"DIR_REGIONAL\": \"16057572\",
            \"GER_SUCURSAL\": \"03002658\",
            \"GER_COMERCIAL\": \"18040942\",
            \"AGENTE\": \"0\",
            \"CORRETOR1\": \"07037818\",
            \"CORRETOR2\": \"0\",
            \"AGENTE_FIDELIZACAO\": \"0\",
            \"MODELO_PROPOSTA\": \"YZ\",
            \"MODELO_PROPOSTA_GED\": \"YZ\",
            \"TIPO_COMISSAO\": \"1\"
        }
    }
}
"""
        let parameterMongeral = convert(text: mongeral)
        APIController.post(withParameters: parameterMongeral!)
        
        if newPlan {
            
        }
    }
    
    func convert(text: String) -> [String: Any]? {
        if let data = text.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
            } catch {
                print(error.localizedDescription)
            }
        }
        return nil
    }
    
    @IBAction func enviarEmailButton(_ sender: UIButton) {
        sendEmail()
    }
    
    func sendEmail() {
        if MFMailComposeViewController.canSendMail() {
            let mail = MFMailComposeViewController()
            mail.mailComposeDelegate = self
            mail.setToRecipients([self.clientData.email])
            mail.setMessageBody("<p>Olá, \(self.clientData.nome), tudo bem?</p></p>Estamos aqui para alertá-lo quanto aos surtos de sarampo que só neste curto intervalo de tempo aumentaram em 300%.</p></p>Então o quanto antes, procure tomar vacina no posto mais próximo. Além disso, analisamos uma ótima oferta para você, quanto a parte de seguro aeronáutico, levando em consideração a sua profissão.</p>Caso deseje realizar este investimento responda este email e entraremos em contato logo em seguida. Ajude-nos a captar novas pessoas! </p></p></p></p>Você sabia que ao indicar outras pessoas você pode adquirir descontos assim como a pessoa indicada. Então tá esperando o que?! envie seu código de compartilhamento para o máximo de pessoas possível!!</p>", isHTML: true)
            
            present(mail, animated: true)
        } else {
            // show failure alert
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true)
    }
}
