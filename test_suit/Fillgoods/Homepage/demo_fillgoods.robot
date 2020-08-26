*** Settings ***
Resource          C:\Workspeces\RobotDemo\test_suit\resources\all_global_variables.robot
Suite Setup       Open Browser by Google Chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
Open Browser with url=Fillgoods - success
    Go To                    ${url_fillgoods}
    Verify Fillgoods Page    ${title_fillgoods}

