*** Settings ***
Resource          ../../../resources/all_global_variables.robot
Suite Setup       Open Browser by Google Chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
If user Go to Login Page
    Go To                                ${url_portal_test_login_page}
    Wait Until Page Contains Element     ${portaltest_login_body}
    Verify url_portal_test_login_page

If user Login by Valid Data
    Go To                                  ${url_portal_test_login_page}
    Wait Until Page Contains Element       ${portaltest_login_body}
    Input a Valid Username and Password
    Click Element                          ${portaltest_login_btn}
    Wait Until Page Contains Element       ${admin_header_logo}
    Page Should Contain Element            ${admin_partner_text}            Portal | Loreal Paris TH
    Page Should Contain Element            ${admin_info_header_text}        Hello 
    Page Should Contain Element            ${admin_info_header_user}        jirayu

If user Login by Invalid Data
    Open Browser by Google Chrome
    Go To                                    ${url_portal_test_login_page}
    Input a Invalid Username and Password
    Click Element                            ${portaltest_login_btn}
    Wait Until Page Contains Element         ${portaltest_input_username_or_password_incorrect}
    Page Should Contain Element              ${portaltest_input_username_or_password_incorrect}    Username or Password is incorrect.

If user Login by Empty Data
    Open Browser by Google Chrome
    Go To                                  ${url_portal_test_login_page}
    Input a Empty Username and Password
    Click Element                          ${portaltest_login_btn}
    Page Should Contain Element            ${portaltest_login_invalid_username_email}    Please fill out this field.
    Page Should Contain Image              ${portaltest_logo}
    Page Should Contain Element            ${portaltest_login_body}
    Element Text Should Be                 ${portaltest_login_h3}                        Login to
    Element Text Should Be                 ${portaltest_login_h4}                        aCommerce Management Portal
    Page Should Contain Element            ${portaltest_input_username}                  
    Page Should Contain Element            ${portaltest_input_password}                  
    Page Should Contain button             ${portaltest_login_btn}                       
    Page Should Contain Element            ${portaltest_login_h6}                        Forgot your password ?
    Page Should Contain Element            ${portaltest_login_h6}                        No worries,
    Page Should Contain Element            ${portaltest_login_reset_password_link}       Click here to Reset your password.    ${url_portal_test_forgot_pwd_page}
    [Tags]                                 test                                          

If user Click here to Reset your password Link.
    Open Browser by Google Chrome
    Go To                               ${url_portal_test_login_page}
    Click Element                       ${portaltest_login_reset_password_link}
    Wait Until Page Contains Element    ${portaltest_login_body_login_form}
    Page Should Contain Element         ${portaltest_login_body_login_form}        Forget Password
    Page Should Contain Element         ${portaltest_login_body_login_form}        Enter your email to reset your password
    Page Should Contain Element         ${forget_password_page_input}              
    Page Should Contain Element         ${forget_password_username_email_input}    Username or Email
    Page Should Contain Element         ${forget_password_page_submit_btn}         
    Page Should Contain Element         ${forget_password_page_back_to_login}
    Page Should Contain Element         ${forget_password_page_login_btn}          Submit
    # [Tags]                              test