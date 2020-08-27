*** Keywords ***
Verify portal_test page
    Go To ${url_portal_test_login_page}

User is already logged in
    Go To                                  ${url_portal_test_login_page}
    Input a Valid Username and Password
    Click Element                          ${portaltest_login_btn}
    Wait Until Page Contains Element       ${admin_header_logo}

User login success
    User is already logged in

User is already promotion page
    User login success
    Go to                          ${url_portal_test_promotion}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel}

Verify url_portal_test_login_page
    Page Should Contain Image      ${portaltest_logo}
    Page Should Contain Element    ${portaltest_login_body}
    Element Text Should Be         ${portaltest_login_h3}                     Login to
    Element Text Should Be         ${portaltest_login_h4}                     aCommerce Management Portal
    Page Should Contain Element    ${portaltest_input_username}               
    Page Should Contain Element    ${portaltest_input_password}               
    Page Should Contain button     ${portaltest_login_btn}                    
    Page Should Contain Element    ${portaltest_login_h6}                     Forgot your password ?
    Page Should Contain Element    ${portaltest_login_h6}                     No worries,
    Page Should Contain Element    ${portaltest_login_reset_password_link}    Click here to Reset your password.    ${url_portal_test_forgot_pwd_page}

Input a Valid Username and Password
    Input Text        ${portaltest_input_username}    ${portaltest_username}
    Input Password    ${portaltest_input_password}    ${portaltest_password}

Input a Invalid Username and Password
    Input Text        ${portaltest_input_username}    ${portaltest_invalid_username}
    Input Password    ${portaltest_input_password}    ${portaltest_invalid_password}

Input a Empty Username and Password
    Input Text        ${portaltest_input_username}    ${Empty}
    Input Password    ${portaltest_input_password}    ${Empty}