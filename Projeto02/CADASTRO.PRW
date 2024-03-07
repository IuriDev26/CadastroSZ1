#include 'totvs.ch'
#include 'protheus.ch'
#include 'TopConn.ch'

User Function CADASTRO()

    Local   oNxtBtn1
    Local   oNxtBtn2
    Private   oSlvBtn
    Private lChkAdvPl
    Private lChkRuby
    Private lChkPython
    Private lChkRust
    Private lChkPearl
    Private cEstCiv
    Private cTemPet
    Private cObs
    Private cCod
    Private cEnd
    Private cCEP
    Private cCidade
    Private cBairro
    Private cTPImov
    Private cUF
    Private cNome
    Private cNReduz
    Private dDtNasc
    Private cDDD
    Private cCelular
    Private cCPF
    Private cSexo
    Private aEstCiv
    Private aFolder
    Private cRoot
    Private aTPImov
    Private oWind
    Private oNome
    Private oNReduz
    Private oDtNasc
    Private oFolder
    Private oDDD
    Private oCelular
    Private oCPF
    Private oSexo
    Private oEnd
    Private oCidade
    Private oUF
    Private oBairro
    Private oTPImov
    Private oCEP
    Private oCod
    Private oEstCiv
    Private oTemPet
    Private oChkAdvPl
    Private oChkRuby
    Private oChkPython
    Private oChkRust
    Private oChkPearl
    Private oObs
    Private oGpPet
    Private oGpLang
    Private oBIncluir
    Private oBPesquisar
    Private oBExlcuir
    Private oBEditar
    Private oIIncluir
    Private oIPesquisar
    Private oIExlcuir
    Private oIEditar
    //Fontes
    oFont1 := TFont():New("Arial",,20,,.T.)
    oFont2 := TFont():New("Arial",,14)
    oFont3 := TFont():New("Arial",,8)


    oWind := TDialog():New(0,0,600,800,"Cadastro Personalizado",,,,,CLR_BLACK,CLR_WHITE,,oWind,.T.,,,,)
        //Folder
        aFolder := {"Dados Pessoais", "Endereço", "Outros"}
        oFolder := TFolder():New(0,0,aFolder,aFolder,oWind,1,CLR_BLACK,,.T.,,400,150,,)
        

            //Aba 1 - Dados Pessoais
            oCod     := TGet():New(1, 5, {|u| IIF(Pcount()>0, cCod:=u, cCod)}, oFolder:aDialogs[1], 40, 10,,, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cCod,,,,,,,"Código",1,oFont3,CLR_BLACK,,,)
            cCod     := Space(6)

            oNome    := TGet():New(1, 55, {|u| IIF(Pcount()>0, cNome:=u, cNome)}, oFolder:aDialogs[1], 100, 10,"@!",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cNome,,,,,,,"Nome Completo",1,oFont3,CLR_BLACK, "Digite Aqui Seu Nome",,)
            cNome    := Space(40)

            oNReduz  := TGet():New(1, 165, {|u| IIF(Pcount()>0, cNReduz:=u, cNReduz)}, oFolder:aDialogs[1], 60, 10,"@!",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cNReduz,,,,,,,"Nome Reduzido",1,oFont3,CLR_BLACK, "Digite o Nome Reduzido",,)
            cNReduz  := Space(20)

            oCPF     := TGet():New(1, 235, {|u| IIF(Pcount()>0, cCPF:=u, cCPF)}, oFolder:aDialogs[1], 100, 10,"@R 999.999.999-99",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cCPF,,,,,,,"CPF",1,oFont3,CLR_BLACK,,,)
            cCPF     := Space(11)

            oDDD     := TGet():New(25, 5, {|u| IIF(Pcount()>0, cDDD:=u, cDDD)}, oFolder:aDialogs[1], 20, 10,"@R 99",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cDDD,,,,,,,"DDD",1,oFont3,CLR_BLACK,,,)
            cDDD     := Space(2)

            oCelular := TGet():New(25, 35, {|u| IIF(Pcount()>0, cCelular:=u, cCelular)}, oFolder:aDialogs[1], 60, 10,"@R 9 9999-9999",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cCelular,,,,,,,"Número de Celular",1,oFont3,CLR_BLACK,,,)
            cCelular := Space(9)

            aSexo    := {"Masculino", "Feminino"}
            cSexo    := aSexo[1]
            oSexo    := TComboBox():New(25,115,{|u| IIF(Pcount()>0,cSexo:=u,cSexo)},aSexo,40,10,oFolder:aDialogs[1],,,,CLR_BLACK,CLR_WHITE,.T.,oFont2,,,,,,,,;
                        cSexo,"Sexo",1,oFont3,CLR_BLACK)
            oSexo:lReadOnly:=.T.
            
            oDtNasc  := TGet():New(25, 165, {|u| IIF(Pcount()>0, dDtNasc:=u, dDtNasc)}, oFolder:aDialogs[1], 60, 10,"@9",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,dDtNasc,,,,.T.,,,"Data de Nacimento",1,oFont3,CLR_BLACK,,,)
            dDtNasc  := Date()

            oNxtBtn1 := TButton():New(80,10,"Avançar",oFolder:aDialogs[1],{|| oFolder:nOption:=2 },60,15,,oFont2,,.T.,,,,,,)


            //Aba 2 - Endereço
            oEnd     := TGet():New(1, 5, {|u| IIF(Pcount()>0, cEnd:=u, cEnd)}, oFolder:aDialogs[2], 100, 10,"@!",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cEnd,,,,,,,"Endereço",1,oFont3,CLR_BLACK,,,)
            cEnd     := Space(200)

            oBairro  := TGet():New(1, 115, {|u| IIF(Pcount()>0, cBairro:=u, cBairro)}, oFolder:aDialogs[2], 60, 10,"@!",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cBairro,,,,,,,"Bairro",1,oFont3,CLR_BLACK,,,)
            cBairro  := Space(15)

            aTPImov  := {"Casa", "Apartamento", "Galpão"}
            cTPImov  := aTPImov[1]
            oTPImov  := TComboBox():New(1,185,{|u| IIF(Pcount()>0,cTPImov:=u,cTPImov)},aTPImov,60,10,oFolder:aDialogs[2],,,,CLR_BLACK,CLR_WHITE,.T.,oFont2,;
            ,,,,,,,cTPImov,"Tipo de Imóvel",1,oFont3,CLR_BLACK)
            //oTPImov:lObfuscate:=.T.
            oTPImov:lReadOnly:=.T.

            oCEP     := TGet():New(1, 255, {|u| IIF(Pcount()>0, cCep:=u, cCep)}, oFolder:aDialogs[2], 60, 10,"@R 99999-999",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cCep,,,,,,,"CEP",1,oFont3,CLR_BLACK,,,)
            cCEP     := Space(8)

            oCidade  := TGet():New(25, 5, {|u| IIF(Pcount()>0, cCidade:=u, cCidade)}, oFolder:aDialogs[2], 60, 10,"@!",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cCidade,,,,,,,"Cidade",1,oFont3,CLR_BLACK,,,)
            cCidade  := Space(30) 

            oUF      := TGet():New(25, 75, {|u| IIF(Pcount()>0, cUF:=u, cUF)}, oFolder:aDialogs[2], 60, 10,"@!",, CLR_BLACK, CLR_WHITE, oFont2;
            ,,,.T.,,,,,,,.T.,,,cUF,,,,,,,"Estado",1,oFont3,CLR_BLACK,,,)
            oUF:cF3  := "12"
            cUF      := Space(2)

            oNxtBtn2 := TButton():New(80,10,"Avançar",oFolder:aDialogs[2],{|| oFolder:nOption:=3 },60,15,,oFont2,,.T.,,,,,,)

            //Aba Outros
            aEstCiv  := {"Casado", "Solteiro", "Divorciado", "Amaziado"}
            cEstCiv  := aEstCiv[1]
            oEstCiv  := TComboBox():New(1,5,{|u| IIF(Pcount()>0,cEstCiv:=u,cEstCiv)},aEstCiv,60,10,oFolder:aDialogs[3],,,,CLR_BLACK,CLR_WHITE,.T.,oFont2,;
                        ,,,,,,,cEstCiv,"Estado Civil",1,oFont3,CLR_BLACK)   
            oEstCiv:lReadOnly:=.T.

            oGpPet   :=  TGroup():New( 1, 75, 41,  135 ,"Possui Pet?",  oFolder:aDialogs[3] ,CLR_BLACK, CLR_WHITE ,.T.,)
                //Grupo dos pets
                oTemPet := TRadMenu():New(10,80,{"Sim", "Não"},{|u| IIF(Pcount()>0,cTemPet:=u, cTemPet)},oFolder:aDialogs[3],,,CLR_BLACK,CLR_WHITE,,,,20,20,,,,.T.,,)
                oTemPet:lReadOnly:=.T.
                cTemPet := 1

            oGpLang  :=  TGroup():New( 1, 145, 71,  245 ,"Linguagens que Domina",  oFolder:aDialogs[3] ,CLR_BLACK, CLR_WHITE ,.T.,)
                //Grupo das Linguagens
                oChkAdvPl  := TCheckBox():New(10,150,"AdvPL",,oFolder:aDialogs[3],40,10,, {|| lChkAdvPl:=!lChkAdvPl };
                            ,oFont2,,,,,.T.,,,)
                oChkAdvPl:lReadOnly:=.T.
                lChkAdvPl  := .F. 
                
                oChkRuby   := TCheckBox():New(20,150,"Ruby",,oFolder:aDialogs[3],40,10,, {|| lChkRuby:=!lChkRuby };
                            ,oFont2,,,,,.T.,,,)
                oChkRuby:lReadOnly:=.T.
                lChkRuby   := .F.
    
                oChkPython := TCheckBox():New(30,150,"Python",,oFolder:aDialogs[3],40,10,, {|| lChkPython:=!lChkPython };
                            ,oFont2,,,,,.T.,,,)
                oChkPython:lReadOnly:=.T.
                lChkPython := .F.
                
                oChkRust   := TCheckBox():New(40,150,"Rust",,oFolder:aDialogs[3],40,10,, {|| lChkRust:=!lChkRust };
                            ,oFont2,,,,,.T.,,,)
                oChkRust:lReadOnly:=.T.
                lChkRust   := .F.

                oChkPearl  := TCheckBox():New(50,150,"Pearl",,oFolder:aDialogs[3],40,10,, {|| lChkPearl:=!lChkPearl };
                            ,oFont2,,,,,.T.,,,)
                oChkPearl:lReadOnly:=.T.                            
                lChkPearl  := .F.

            oObs     := TMultiGet():New(1,255,{|u|IIF(Pcount()>0,cObs:=u,cObs)},oFolder:aDialogs[3],140,100,oFont2,,,,,.T.,,,,,,,,,,,,"Observação",;
                        1,oFont3,)
            cObs     := Space(200)

            oSlvBtn  := TButton():New(100,10,"Salvar",oFolder:aDialogs[3],{|| Inclusao()},60,15,,oFont2,,.T.,,,,,,)
            
        cRoot = "C:\Users\Iuri\Desktop\Todos os Arquivos\GUIDO\ADVPL\Projeto02\Icons"
        // Botões Inferiores
        oIIncluir   := TBitmap():New(160,25,50,50,,cRoot + "\adicionar.bmp",.T.,oWind,{|| LiberaTela(),oCod:cText := GeraCod()},,,,,,,,.T.,,,,)
        oBIncluir   := TButton():New(200,10,"Incluir",oWind, {|| LiberaTela(),oCod:cText := GeraCod()} ,60,10,,oFont2,,.T.,,,,,,)

        oIPesquisar := TBitmap():New(160,95,50,50,,cRoot + "\procurar.png",.T.,oWind,,,,,,,,,.T.,,,,)
        oBPesquisar := TButton():New(200,80,"Pesquisar",oWind,  {|| Consulta()} ,60,10,,oFont2,,.T.,,,,,,)

        // oIEditar    := TBitmap():New(160,95,50,50,,cRoot + "\editar.bmp",.T.,oWind,  /*bLClicked*/ ,,,,,,,,.T.,,,,)
        // oBEditar    := TButton():New(200,80,"Editar",oWind,  /*bAction*/ ,60,10,,oFont2,,.T.,,,,,,)
        // oIExlcuir   := TBitmap():New(160,235,50,50,,cRoot + "\retirar.bmp",.T.,oWind,  /*bLClicked*/ ,,,,,,,,.T.,,,,)
        // oBExlcuir   := TButton():New(200,220,"Excluir",oWind,  /*bAction*/ ,60,10,,oFont2,,.T.,,,,,,)
        
    oWind:Activate(,,,.T.)
Return


Static Function LiberaTela()
    Local aFields := {}
    Local nCount
    Local oField

    AADD(aFields, {oNome,oNReduz,oDtNasc,oDDD,oCelular,oCPF,oEnd,oCidade,oUF,oBairro,oCEP,oSexo,oTPImov,;
                   oEstCiv,oTemPet,oChkAdvPl,oChkRuby,oChkPython,oChkRust,oChkPearl,oObs})

    For nCount := 1 To Len(aFields[1])
        oField:= aFields[1][nCount]
        oField:lReadOnly:= .F.    
    Next i              



Return


Static Function GeraCod()

    Local aArea := GetArea("SZ1")
    Local cQuery
    Local cCod
    Local nCod
    Local nFieldSize

    cQuery := ''
    cQuery += "SELECT TOP 1                   "
    cQuery += "R_E_C_N_O_, Z1_COD             "
    cQuery += "FROM " + RetSqlName("SZ1") + " "
    cQuery += "ORDER BY R_E_C_N_O_ DESC       "


    TcQuery cQuery New Alias 'QRY'
    
        While !QRY->(EOF())
            cCod := QRY->Z1_COD
            QRY->(DbSkip())
        EndDo
        QRY->(DbCloseArea())


        nFieldSize := Len(cCod)
        nCod := Val(cCod) + 1
        cCod := ''

        While Len(cCod) < nFieldSize - Len(cValToChar(nCod))
            cCod += "0"
        EndDo
        cCod += cValToChar(nCod)
    RestArea(aArea)


Return cCod


Static Function VldData()

    Local aGets
    Local nCount
    Local lValid
    Local aRet

    aGets := {}

    aAdd(aGets, {oNome:oGet:Buffer,                  "Nome"              })
    aAdd(aGets, {oNReduz:oGet:Buffer,                "Nome Reduzido"     })
    aAdd(aGets, {oDtNasc:oGet:Buffer,                "Data de Nascimento"})
    aAdd(aGets, {oDDD:oGet:Buffer,                   "DDD"               })
    aAdd(aGets, {oCelular:oGet:Buffer,               "Celular"           })
    aAdd(aGets, {oCPF:oGet:Buffer,                   "CPF"               })
    aAdd(aGets, {oEnd:oGet:Buffer,                   "Endereço"          })
    aAdd(aGets, {oCidade:oGet:Buffer,                "Cidade"            })
    aAdd(aGets, {oBairro:oGet:Buffer,                "Bairro"            })
    aAdd(aGets, {oCEP:oGet:Buffer,                   "CEP"               })
    aAdd(aGets, {cObs,                               "Observação"        })

    aRet   := {}
    lValid := .T.
    cRet   := ""

    For nCount:= 1 To Len(aGets)
        If Len(AllTrim(aGets[nCount][1])) == 0
            lValid := .F.
            cRet   += aGets[nCount][2] + chr(13) + chr(10) 
        EndIf
    Next nCount

    aAdd(aRet, {lValid, cRet})
    
Return aRet


Static Function Inclusao()

    Local aArea := GetArea()

    aValid := VldData()
    If aValid[1,1]
        Begin Transaction
            DBSelectArea("SZ1")
            If RecLock("SZ1", .T.)
                SZ1->Z1_BAIRRO    := cBairro 
                SZ1->Z1_CELULAR   := cCelular 
                SZ1->Z1_CEP       := cCEP
                SZ1->Z1_CIDADE    := cCidade
                SZ1->Z1_COD       := cCod
                SZ1->Z1_CPF       := cCPF 
                SZ1->Z1_DDD       := cDDD 
                SZ1->Z1_DTNASC    := dDtNasc    
                SZ1->Z1_END       := cEnd     
                SZ1->Z1_ESTCIV    := cEstCiv   
                SZ1->Z1_LADVPL    := IIF(lChkAdvPl,  "1", "0")     
                SZ1->Z1_LPEARL    := IIF(lChkPearl,  "1", "0")
                SZ1->Z1_LPYTHON   := IIF(lChkPython, "1", "0")  
                SZ1->Z1_LRUBY     := IIF(lChkRuby,   "1", "0")      
                SZ1->Z1_LRUST     := IIF(lChkRust,   "1", "0")    
                SZ1->Z1_TEMPET    := IIF(cTemPet=1,  "1", "2") 
                SZ1->Z1_NOME      := cNome  
                SZ1->Z1_NREDUZ    := cNReduz  
                SZ1->Z1_SEXO      := cSexo     
                SZ1->Z1_TPIMOV    := cTPImov     
                SZ1->Z1_UF        := cUF
                SZ1->Z1_OBS       := cObs
                SZ1->(MsUnlock())
            EndIf
            FWAlertSuccess("Registro Incluído com Sucesso!", "Sucesso")
        End Transaction
        BlockTela()
    Else
        MsgInfo("Existem Campos que não foram devidamente Preenchidos: " + chr(13) + chr(10) +;
                aValid[1,2], "Preencha os Dados Corretamente")
    EndIf
    RestArea(aArea)
 
Return


Static Function BlockTela()

    Local aFields := {}
    Local nCount
    Local oField
    

    AADD(aFields, {oNome,oNReduz,oDtNasc,oDDD,oCelular,oCPF,oEnd,oCidade,oUF,oBairro,oCEP,oSexo,oTPImov,;
                   oEstCiv,oTemPet,oChkAdvPl,oChkRuby,oChkPython,oChkRust,oChkPearl,oObs})

    For nCount := 1 To Len(aFields[1])
        oField:= aFields[1][nCount]
        oField:lReadOnly:= .T.
        If GetClassName(oField) == "TGET" 
            If ValType(oField:cText) == "C"
                oField:cText := Space(Len(oField:cText))
            Else
                oField:cText := Date()
            EndIf 
        EndiF
    Next nCount



Return


Static Function Consulta()

    Local aArea := GetArea()
    Local bEditar
    Local oBVoltar
    
    DBSelectArea("SZ1")
    SZ1->(DbSetOrder(1))
    If ConPad1(,,,"SZ1")
        cBairro    := aCpoRet[11]
        cCelular   := aCpoRet[7]
        cCEP       := aCpoRet[13]
        cCidade    := aCpoRet[15]
        cCod       := aCpoRet[2]
        cCPF       := aCpoRet[9]
        cDDD       := aCpoRet[6]
        dDtNasc    := aCpoRet[5]
        cEnd       := aCpoRet[10]
        cEstCiv    := aCpoRet[16]
        cTemPet    := IIF(aCpoRet[17]="1",   1,  2 )
        lChkAdvPl  := IIF(aCpoRet[18]="1", .T., .F.)
        lChkPython := IIF(aCpoRet[19]="1", .T., .F.) 
        lChkRust   := IIF(aCpoRet[20]="1", .T., .F.)
        lChkRuby   := IIF(aCpoRet[21]="1", .T., .F.)
        lChkPearl  := IIF(aCpoRet[22]="1", .T., .F.)
        cNome      := aCpoRet[3]
        cNReduz    := aCpoRet[4]
        cSexo      := aCpoRet[8]
        cTPImov    := aCpoRet[12]
        cUF        := aCpoRet[14]
        cObs       := aCpoRet[23]
    EndIf
    RestArea(aArea)

    bEditar     := {|| Editar() }
    oIEditar    := TBitmap():New(160,25,50,50,,cRoot + "\editar.bmp",.T.,oWind,  {|| LiberaTela(), oSlvBtn:bAction:=bEditar} ,,,,,,,,.T.,,,,)
    oBEditar    := TButton():New(200,10,"Editar",oWind,  {|| LiberaTela(), oSlvBtn:bAction:=bEditar} ,60,10,,oFont2,,.T.,,,,,,)

    oIExlcuir   := TBitmap():New(160,95,50,50,,cRoot + "\retirar.bmp",.T.,oWind, {|| Excluir()},,,,,,,,.T.,,,,)
    oBExlcuir   := TButton():New(200,80,"Excluir",oWind,{|| Excluir()},60,10,,oFont2,,.T.,,,,,,)

    oBVoltar    := TButton():New(220,10,"Voltar",oWind, {|| BlockTela(), RetornaTel(), oBVoltar:lVisibleControl:= .F. },60,10,,oFont2,,.T.,,,,,,)

    oIIncluir:SetEmpty()
    oIPesquisar:SetEmpty()

    oBIncluir:lVisibleControl   := .F.
    oBPesquisar:lVisibleControl := .F.

Return


Static Function Editar()

    Local aArea := GetArea()

    aValid := VldData()
    If aValid[1,1]
        Begin Transaction
            DbSelectArea("SZ1")
            SZ1->(DbSetOrder(1))
            SZ1->(DbGoTop())
            If SZ1->(DbSeek( FwxFilial("SZ1") + cCod ))
                RecLock("SZ1", .F.)
                    SZ1->Z1_BAIRRO    := cBairro 
                    SZ1->Z1_CELULAR   := cCelular 
                    SZ1->Z1_CEP       := cCEP
                    SZ1->Z1_CIDADE    := cCidade
                    SZ1->Z1_COD       := cCod
                    SZ1->Z1_CPF       := cCPF 
                    SZ1->Z1_DDD       := cDDD 
                    SZ1->Z1_DTNASC    := dDtNasc    
                    SZ1->Z1_END       := cEnd     
                    SZ1->Z1_ESTCIV    := cEstCiv   
                    SZ1->Z1_LADVPL    := IIF(lChkAdvPl,  "1", "0")     
                    SZ1->Z1_LPEARL    := IIF(lChkPearl,  "1", "0")
                    SZ1->Z1_LPYTHON   := IIF(lChkPython, "1", "0")  
                    SZ1->Z1_LRUBY     := IIF(lChkRuby,   "1", "0")      
                    SZ1->Z1_LRUST     := IIF(lChkRust,   "1", "0")    
                    SZ1->Z1_TEMPET    := IIF(cTemPet=1,  "1", "2") 
                    SZ1->Z1_NOME      := cNome  
                    SZ1->Z1_NREDUZ    := cNReduz  
                    SZ1->Z1_SEXO      := cSexo     
                    SZ1->Z1_TPIMOV    := cTPImov     
                    SZ1->Z1_UF        := cUF
                    SZ1->Z1_OBS       := cObs
                SZ1->(MsUnlock())
            Else
                MsgInfo("Não foi Possível localizar o registro para edição." + chr(13) + chr(10) + "Favor contatar o TI", "Atenção")
            EndIf
        End Transaction
    Else
        MsgInfo("Existem Campos que não foram devidamente Preenchidos: " + chr(13) + chr(10) +;
                aValid[1,2], "Preencha os Dados Corretamente")
    EndIf

    RestArea(aArea)

Return


Static Function Excluir()

    Local aArea  := GetArea()
    Begin Transaction
        DbSelectArea("SZ1")
        SZ1->(DbSetOrder(1))
        SZ1->(DbGoTop())
        If SZ1->(DbSeek(FwxFilial("SZ1") + cCod))
            RecLock("SZ1", .F.)
                DbDelete()
            SZ1->(MsUnlock())
        EndIf
        FWAlertSuccess("Registro Excluido com Sucesso!", "Exclusão Realizada")
    End Transaction
    
    BlockTela()
    RetornaTel()

    RestArea(aArea)

Return


Static Function RetornaTel()

    oIEditar:SetEmpty()
    oIExlcuir:SetEmpty()
    
    oBEditar:lVisibleControl:= .F.
    oBExlcuir:lVisibleControl:= .F.

    oIIncluir   := TBitmap():New(160,25,50,50,,cRoot + "\adicionar.bmp",.T.,oWind,{|| LiberaTela(),oCod:cText := GeraCod()},,,,,,,,.T.,,,,)
    oBIncluir   := TButton():New(200,10,"Incluir",oWind, {|| LiberaTela(),oCod:cText := GeraCod()} ,60,10,,oFont2,,.T.,,,,,,)

    oIPesquisar := TBitmap():New(160,95,50,50,,cRoot + "\procurar.png",.T.,oWind,,,,,,,,,.T.,,,,)
    oBPesquisar := TButton():New(200,80,"Pesquisar",oWind,  {|| Consulta()} ,60,10,,oFont2,,.T.,,,,,,)

Return
