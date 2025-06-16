*** Settings ***
Library    SeleniumLibrary
Resource   keywords.robot

*** Test Cases ***
TC01
    BrowserOpen
TC02
    Input
    Login
TC03
    Validate Page    
    Sort

TC04
    Add to Cart
    Remove
    Checkout

TC05
    Validate Products
    Finish
    Logout
