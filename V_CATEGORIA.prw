#include 'protheus.ch'

User Function V_CATEGORIA()
    local aHeadStr  := {}
    local oRest
    local cRetornoVTEX
    local lRetornoVTEX
    local cBody     := ''

    local cAppToken := 'ERGRYYGRDECTPFZGQQDIPPRRJWBWUGNBPBJSECGLXHFEVBBNNPVJSMHOZOICWJXXQAENVGBNKSLIKMWIUNJFLEICUVTQTDONKIOUWNRHNHZZAYDNSAIJASMMRCTANLTG'
    local cAppKey   := 'vtexappkey-lojapitu-UEBODD'
    local cURL      := 'https://lojapitu.vtexcommercestable.com.br'
    local cPath     := '/api/catalog/pvt/category'

    aAdd(aHeadStr, "X-VTEX-API-AppToken: " + cAppToken              )
    aAdd(aHeadStr, "X-VTEX-API-AppKey: "   + cAppKey                )
    aAdd(aHeadStr, "accept: application/json; charset=utf-8"        )
    aAdd(aHeadStr, "Content-Type: application/json; charset=utf-8"  )

    cBody   += " { "
    cBody   += " Id: 45, "
    cBody   += " Name: 'Home theater2' }"
  
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
