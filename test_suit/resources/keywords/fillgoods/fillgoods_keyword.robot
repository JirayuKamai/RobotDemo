*** Keywords ***
Verify Fillgoods Page
    [Arguments]        ${title}
    Title Should Be    ${title_fillgoods}

Verify Fillgoods Login Page
    Title Should Be    ${title_fillgoods_login}
    Element Should Be Visible    ${fillgoods_logo}
    Element Should Be Visible    ${login_tab}
    Element Should Be Visible    ${register_tab}
    Element Should Be Visible    ${input_email}
    Element Should Be Visible    ${input_password}
    Element Should Be Visible    ${login_btn}
    Element Should Be Visible    ${continue_with_facebook_btn}
    Element Should Be Visible    ${continue_with_google_btn}
    Element Should Be Visible    ${forgot_password_btn}
    
Input Email and Password
    [Arguments]                  ${xpath_email}       ${xpath_password}    ${email}    ${password}
    Input Text                   ${input_email}       ${user_email}
    Input Text                   ${input_password}    ${user_password}