*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot

*** Variables ***


*** Keywords ***

Go to "Team" Page
    Team.Navigate To
    Team.Verify Page Loaded
    Team.Validate Page Contents
    Team.Login to the ERS_Mobile_POS

Go to Landing Page
   Landing.Verify Page Loaded

Select a Product
    TopNav.Select Product on Product Entry page

Perform a Transaction
    TopNav.Perform a Transaction using Cash
