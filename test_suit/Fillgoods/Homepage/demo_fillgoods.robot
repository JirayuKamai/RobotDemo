*** Settings ***
Resource          /Users/jirayukam-ai_mbp/RobotDemo/test_suit/Fillgoods/resources/fillgoods_keyword.robot
Resource          /Users/jirayukam-ai_mbp/RobotDemo/test_suit/Fillgoods/resources/fillgoods_variables.robot
Library           SeleniumLibrary
Library           BuiltIn
Library           String
Suite Setup       Open Browser     about:blank    chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
Open Browser with url=Fillgoods - success
   Go To                    ${url_fillgoods}
   Verify Fillgoods Page    ${title_fillgoods}

