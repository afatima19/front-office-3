*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${NEXT} =  id = next
${PRODUCT} =  id = objndx2:epos:products:productcode:1:1
${TOTAL_AMOUNT} =  id = objndx4:epos:purchasesummary:total:1_text
${CASH} =  id = objndx12:epos::t.cash.amount:1
#${PAID_USING_CASH_ID} =  xpath = //*[@id="objndx4:epos:receipttext:payment.text:1_text"]
${RECEIPT} =  id = objndx2:epos:receipt:receiptnumber:1_label

#Should be Equal as Integers  ${NUM}  3
#Element Should Contain    locator    expected_text

*** Keywords ***
Select Product on Product Entry page
    Sleep  10s
    wait until page contains element  ${PRODUCT}
    Click Element  ${PRODUCT}
    Select From List by Value  ${PRODUCT}  24/34-770
    Sleep  8s
    Click Button  ${NEXT}
    Sleep  12s


Perform a Transaction using Cash
    ${ElementText} =  get text  ${TOTAL_AMOUNT}
    Sleep  12s
    Input Text  ${CASH}  ${ElementText}
    Sleep  14s
    Click Button  ${NEXT}
    Sleep  10s
    ${RECEIPT_LABEL} =  get text  ${RECEIPT}
    should be equal as strings  ${RECEIPT_LABEL}  Receipt:  ignore_case=true
    Click Button  ${NEXT}
    Sleep  10s
    #should be equal as strings  ${ElementText}  ${ElementText} was paid using CASH  ignore_case=true

    #${PAID_USING_CASH_text} =  get text  ${PAID_USING_CASH_ID}
    #Element Should Contain    ${PAID_USING_CASH_text}    was paid using CASH



    #$128.02 was paid using CASH


#Verification on Receipt screen
#Receipt id = objndx2:epos:receipt:receiptnumber:1_label
#${ElementText} was paid using CASH
