*** Settings ***
Resource          C:\Workspeces\RobotDemo\test_suit\resources\all_global_variables.robot
Suite Setup       Open Browser by Google Chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
If user Login by Valid Data
    Go To                                  ${url_portal_test_login_page}
    Input a Valid Username and Password
    Click Element                          ${portaltest_login_btn}
    Wait Until Page Contains Element       ${admin_header_logo}
    Page Should Contain Element            ${admin_partner_text}                        Portal | Loreal Paris TH
    Page Should Contain Element            ${admin_info_header_text}                    Hello 
    Page Should Contain Element            ${admin_info_header_user}                    jirayu
    Page Should Contain Element            ${admin_nav_main_menu}
    Page Should Contain Element            ${admin_nav_main_menu_hide}                  Hide Menu
    Page Should Contain Element            ${admin_nav_main_menu_summary}               Summary
    Page Should Contain Element            ${admin_nav_main_menu_promotion}             Promotions
    Page Should Contain Element            ${admin_nav_main_menu_item_amp_inventory}    Item & Inventory
    Page Should Contain Element            ${admin_nav_main_menu_sales_orders}          Sales Orders
    Page Should Contain Element            ${admin_nav_main_menu_delivery}              Delivery
