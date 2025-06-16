*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Username}    standard_user
${Password}    secret_sauce
${FirstName}    ABC
${LastName}    DEF
${PostalCode}    123456

*** Keywords ***
BrowserOpen
    Open Browser    https://www.saucedemo.com/
Input
    Input Text    id=user-name    ${Username}
    Sleep    2s
    Input Text    id=password     ${Password}
    Sleep    2s
    
Login
    Click Button    id=login-button

Validate Page
    Wait Until Element Is Visible    id=inventory_container
    Sleep    2s

Sort 
    Select From List By Label        class=product_sort_container    Price (low to high)
    Sleep    1s

Add to Cart
    Click Button    id=add-to-cart-sauce-labs-onesie
    Sleep    0.5s
    Click Button    id=add-to-cart-sauce-labs-bike-light
    Sleep    0.5s
    Click Element    class=shopping_cart_link
    Sleep    0.5s

Remove
    Click Button    id=remove-sauce-labs-bike-light
    Sleep    0.5s
    
Checkout
    Click Button    id=checkout
    Sleep    0.5s
    Input Text    id=first-name    ${FirstName}
    Sleep    0.5s
    Input Text    id=last-name    ${LastName}
    Sleep    0.5s
    Input Text    id=postal-code    ${PostalCode}
    Sleep    0.5s
    Click Button    id=continue
    Sleep    0.5s

Validate Products
    Wait Until Element Is Visible    class=summary_info
    Sleep    1s

Finish
    Click Button    id=finish
    Sleep    0.5s
    Click Button    id=back-to-products

Logout
   Click Element    id=react-burger-menu-btn 
   Sleep    0.5s
   Click Element    id=logout_sidebar_link
   Sleep    0.5s
