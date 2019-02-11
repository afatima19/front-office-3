*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot

Test Setup  Begin Web Test
Test Teardown  End Web Test

# robot -d results tests/Front_Office.robot
#pybot -d results tests/Front_Office.robot

*** Variables ***
${BROWSER} =  firefox

# 18.1 URL
${URL} =  https://axisext.campana.com:63000/test/18.1/~ers/ersmobilepos.jsp


#CAA.DEV URL
${URL} =  https://axisext.campana.com:63000/test/caa.dev/~ers/ersmobilepos.jsp

*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  This is test 1 - making changes for Git and on Git as well
    [Tags]  test1

    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Select a Product
    FrontOfficeApp.Perform a Transaction
