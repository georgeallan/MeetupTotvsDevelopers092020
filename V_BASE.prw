#include 'protheus.ch'

User Function V_BASE()
    local aHeadStr  := {}
    local oRest
    local cRetornoVTEX
    local lRetornoVTEX
    local cBody     := ''

    local cAppToken := '????????????'
    local cAppKey   := '????????????'
    local cURL      := '????????????'
    local cPath     := '????????????'

    aAdd(aHeadStr, "X-VTEX-API-AppToken: " + cAppToken              )
    aAdd(aHeadStr, "X-VTEX-API-AppKey: "   + cAppKey                )
    aAdd(aHeadStr, "accept: application/json; charset=utf-8"        )
    aAdd(aHeadStr, "Content-Type: application/json; charset=utf-8"  )

    cBody   += "????????????"
    
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
