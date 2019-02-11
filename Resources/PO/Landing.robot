*** Settings ***
Library  SeleniumLibrary

*** Variables ***
#${LANDING_NAVIGATION_ELEMENT} =  id=mainNav
#${MEMBER_NUMBER}  = id = cancel
${MEMBER_NUMBER} =  id = objndx5:epos:erspos.id:member.no:1
${NEXT1} =  id = next

#Member number 18.1  620285 1065881 004

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  ${MEMBER_NUMBER}
    Input Text  ${MEMBER_NUMBER}  620 277 1303504 004
    Sleep  10s
    Click Button  ${NEXT1}
    Sleep  12s
    Click Button  ${NEXT1}
    Sleep  10s
