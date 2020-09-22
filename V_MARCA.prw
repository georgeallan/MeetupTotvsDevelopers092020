#include 'protheus.ch'

/*
const options = {
  method: 'POST',
  url: 'https://lojapitu.vtexcommercestable.com.br/api/catalog/pvt/brand',
  headers: {
    'content-type': 'application/json',
    accept: 'application/json',
    'x-vtex-api-appkey': 'vtexappkey-lojapitu-ECKGQD',
    'x-vtex-api-apptoken': 'PXVQBTXPUIRDEEQBHTWNSLSIZJDJQRWDGLNFIQVKLWEJWIXXLHXWXVKEFNQRQOZDMOWSRLSRYLBWHJLRLFXIUAFKAIZVAEUXWBWHLFGAPGYLTNWWBYFKQRJMILRILXQT'
  },
  body: {Score: 10, MenuHome: true, Active: true, Id: '1', Name: 'DOCUMENTACAO_VTEX'},
  json: true
};
*/

User Function V_MARCA()
    local aHeadStr  := {}
    local oRest
    local cRetornoVTEX
    local lRetornoVTEX
    local cBody     := ''

    local cAppToken := 'PXVQBTXPUIRDEEQBHTWNSLSIZJDJQRWDGLNFIQVKLWEJWIXXLHXWXVKEFNQRQOZDMOWSRLSRYLBWHJLRLFXIUAFKAIZVAEUXWBWHLFGAPGYLTNWWBYFKQRJMILRILXQT'
    local cAppKey   := 'vtexappkey-lojapitu-ECKGQD'
    local cURL      := 'https://lojapitu.vtexcommercestable.com.br'
    local cPath     := '/api/catalog/pvt/brand'

    aAdd(aHeadStr, "X-VTEX-API-AppToken: " + cAppToken              )
    aAdd(aHeadStr, "X-VTEX-API-AppKey: "   + cAppKey                )
    aAdd(aHeadStr, "accept: application/json; charset=utf-8"        )
    aAdd(aHeadStr, "Content-Type: application/json; charset=utf-8"  )

    cBody   += "{Score: 10, MenuHome: true, Active: true, Id: '3', Name: 'PROTHEUS'}"
    
    oRest := FWRest():New(cURL)

    oRest:SetPath(cPath)

    oRest:SetPostParams(cBody)

    If !oRest:Post( aHeadStr)
        cRetornoVTEX:= oRest:GetResult()
        lRetornoVTEX    := .F.
    else
        cRetornoVTEX:= oRest:GetResult()
        lRetornoVTEX    := .T.
    endif

return
