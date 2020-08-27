*** Settings ***
Resource          /Users/jirayukam-ai_mbp/RobotDemo/test_suit/resources/all_global_variables.robot
Suite Setup       Open Browser by Google Chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
Check the Forget Password Page
    Open Browser by Google Chrome
    Go To                               ${url_portal_test_forget_password_page}
    Wait Until Page Contains Element    ${portaltest_login_body_login_form}
    Page Should Contain Element         ${portaltest_login_body_login_form}        Forget Password
    Page Should Contain Element         ${portaltest_login_body_login_form}        Enter your email to reset your password
    Page Should Contain Element         ${forget_password_page_input}              
    Page Should Contain Element         ${forget_password_username_email_input}    Username or Email
    Page Should Contain Element         ${forget_password_page_submit_btn}         
    Page Should Contain Element         ${forget_password_page_back_to_login}
    Page Should Contain Element         ${forget_password_page_login_btn}          Submit

If user Click the Login button on the Forget Password Page
    Open Browser by Google Chrome
    Go To                               ${url_portal_test_forget_password_page}
    Wait Until Page Contains Element    ${portaltest_login_body_login_form}
    Click Element                       ${forget_password_page_login_btn}
    Page Should Contain Image           ${portaltest_logo}
    Page Should Contain Element         ${portaltest_login_body}
    Element Text Should Be              ${portaltest_login_h3}                     Login to
    Element Text Should Be              ${portaltest_login_h4}                     aCommerce Management Portal
    Page Should Contain Element         ${portaltest_input_username}               
    Page Should Contain Element         ${portaltest_input_password}               
    Page Should Contain button          ${portaltest_login_btn}                    
    Page Should Contain Element         ${portaltest_login_h6}                     Forgot your password ?
    Page Should Contain Element         ${portaltest_login_h6}                     No worries,
    Page Should Contain Element         ${portaltest_login_reset_password_link}    Click here to Reset your password.    ${url_portal_test_forgot_pwd_page}
    # [Tags]                              test

If user Click the Submit buttin by the Empty Data
    Open Browser by Google Chrome
    Go To                               ${url_portal_test_forget_password_page}
    Wait Until Page Contains Element    ${portaltest_login_body_login_form}
    Click Element                       ${forget_password_page_submit_btn}
    Page Should Contain Element         ${forget_password_page_invalid_username_email}
    Location Should Be                  ${url_portal_test_forget_password_page}
    [Tags]  test