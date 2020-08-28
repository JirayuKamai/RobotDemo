*** Settings ***
Resource          ../../../resources/all_global_variables.robot
Suite Setup       Open Browser by Google Chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
If user Login by Valid Data
    Go To                                  ${url_portal_test_login_page}
    Input a Valid Username and Password
    Click Element                          ${portaltest_login_btn}
    Wait Until Page Contains Element       ${admin_header_logo}
    Page Should Contain Element            ${admin_partner_text}                        
    Element Text Should Be                 ${admin_partner_text}                        Portal | Loreal Paris TH
    Page Should Contain Element            ${admin_info_header_text}                    
    Element Text Should Be                 ${admin_info_header_text}                    Hello
    Page Should Contain Element            ${admin_info_header_user}                    
    Element Text Should Be                 ${admin_info_header_user}                    jirayu
    Page Should Contain Element            ${admin_nav_main_menu}
    Page Should Contain Element            ${admin_nav_main_menu_hide}                  
    Element Text Should Be                 ${admin_nav_main_menu_hide}                  Hide Menu
    Page Should Contain Element            ${admin_nav_main_menu_summary}               
    Element Text Should Be                 ${admin_nav_main_menu_summary}               Summary
    Page Should Contain Element            ${admin_nav_main_menu_promotion}             
    Element Text Should Be                 ${admin_nav_main_menu_promotion}             Promotions
    Page Should Contain Element            ${admin_nav_main_menu_item_amp_inventory}    
    Element Text Should Be                 ${admin_nav_main_menu_item_amp_inventory}    Item & Inventory
    Page Should Contain Element            ${admin_nav_main_menu_sales_orders}          
    Element Text Should Be                 ${admin_nav_main_menu_sales_orders}          Sales Orders
    Page Should Contain Element            ${admin_nav_main_menu_delivery}              
    Element Text Should Be                 ${admin_nav_main_menu_delivery}              Delivery
    Page Should Contain Element            ${admin_partner_footer}
    Page Should Contain Element            ${admin_partner_footer_newsletter}
    Page Should Contain Element            ${admin_partner_footer_contact}

If user click Promotion nav-menu
    Open Browser by Google Chrome
    User is already logged in
    Click Element                    ${admin_nav_main_menu_promotion}
    Page Should Contain Element      ${admin_nav_main_menu_promotion_manage_promotion}     
    Element Text Should Be           ${admin_nav_main_menu_promotion_manage_promotion}     Manage Promotion
    Page Should Contain Element      ${admin_nav_main_menu_promotion_manage_base_price}    
    Element Text Should Be           ${admin_nav_main_menu_promotion_manage_base_price}    Manage Base Price

If user click Item & Inventory nav-menu
    Open Browser by Google Chrome
    User is already logged in
    Click Element                    ${admin_nav_main_menu_item_amp_inventory}                       
    Page Should Contain Element      ${admin_nav_main_menu_item_amp_inventory_manage_item}           
    Element Text Should Be           ${admin_nav_main_menu_item_amp_inventory_manage_item}           Manage Item
    Page Should Contain Element      ${admin_nav_main_menu_item_amp_inventory_channel_allocation}    
    Element Text Should Be           ${admin_nav_main_menu_item_amp_inventory_channel_allocation}    Channel Allocation
    Page Should Contain Element      ${admin_nav_main_menu_item_amp_inventory_import_history}        
    Element Text Should Be           ${admin_nav_main_menu_item_amp_inventory_import_history}        Import History

If user click Sales Orders nav-menu
    Open Browser by Google Chrome
    User is already logged in
    Click Element                    ${admin_nav_main_menu_sales_orders}                          
    Page Should Contain Element      ${admin_nav_main_menu_sales_orders_manage_sales_orders}
    Element Text Should Be           ${admin_nav_main_menu_sales_orders_manage_sales_orders}    Manage Sales Orders

If user click Delivery nav-menu
    Open Browser by Google Chrome
    User is already logged in
    Click Element                    ${admin_nav_main_menu_delivery}                     
    Page Should Contain Element      ${admin_nav_main_menu_delivery_shipping_orders}     
    Element Text Should Be           ${admin_nav_main_menu_delivery_shipping_orders}     Shipping Orders
    Page Should Contain Element      ${admin_nav_main_menu_delivery_fleet_management}    
    Element Text Should Be           ${admin_nav_main_menu_delivery_fleet_management}    Fleet Management
