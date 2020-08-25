*** Settings ***
Resource          /Users/jirayukam-ai_mbp/RobotDemo/test_suit/resources/all_global_variables.robot
Suite Setup       Open Browser by Google Chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
If user open Login Page - success
    Go To                        ${url_fillgoods_login}
    Location Should Be           ${url_fillgoods_login}
    Title Should Be              ${title_fillgoods_login}
    Element Should Be Visible    ${fillgoods_logo}
    Element Should Be Visible    ${login_tab}
    Element Should Be Visible    ${register_tab}
    Element Should Be Visible    ${input_email}
    Element Should Be Visible    ${input_password}
    Element Should Be Visible    ${login_btn}
    Element Should Be Visible    ${continue_with_facebook_btn}
    Element Should Be Visible    ${continue_with_google_btn}
    Element Should Be Visible    ${forgot_password_btn}

If user click the fillgoods_logo, redirect to homepage - success
    Go To                    ${url_fillgoods_login}
    Click Element            ${fillgoods_logo}
    Location Should Be       ${url_fillgoods}
    Verify Fillgoods Page    ${title_fillgoods}

If user click the register_tab. redirect to register page - success
    Go To                 ${url_fillgoods_login}
    Click Element         ${register_tab}
    Location Should Be    ${url_fillgoods_register}