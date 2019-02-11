*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Welcome_to_Axis} =  css = body > form > div > h1
${USER_ID} =  id = User
${PASSWORD} =  id = Password
${LOGIN} =  id = Login


*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    wait until page contains element  ${Welcome_to_Axis}
    #Sleep 10s

Validate Page Contents
    # this fails in chrome but passes in Edge
    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team

    ${ElementText} =  get text  ${Welcome_to_Axis}
    should be equal as strings  ${ElementText}  Welcome to AXIS  ignore_case=true

Login to the ERS_Mobile_POS
    Input Text  ${USER_ID}  CSICWP
    Input Text  ${PASSWORD}  CsiCWP
    Click Button  ${LOGIN}
    Sleep  10s




