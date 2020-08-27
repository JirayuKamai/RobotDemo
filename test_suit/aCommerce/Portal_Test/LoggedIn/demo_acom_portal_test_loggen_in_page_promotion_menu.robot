*** Settings ***
Resource          ../../../resources/all_global_variables.robot
Suite Setup       Open Browser by Google Chrome
Suite Teardown    Close All Browsers

*** Test Cases ***
Check filter panel
    Open Browser by Google Chrome
    User is already promotion page
    Wait Until Page Contains Element    ${admin_manage_promotion_filter_panel}

    Page Should Contain Element    ${admin_manage_promotion_filter_panel_partner_lbl}            Partner
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_partner_input}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_partner_placeholder}    Filter by partners

    Page Should Contain Element    ${admin_manage_promotion_filter_panel_channel_lbl}            Channel
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_channel_input}          
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_channel_placeholder}    Filter by channels

    Page Should Contain Element    ${admin_manage_promotion_filter_panel_promotion_name_lbl}            Promotion Name
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_promotion_name_input}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_promotion_name_btn}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_promotion_name_placeholder}    Search

    Page Should Contain Element    ${admin_manage_promotion_filter_panel_start_date_lbl}            Start Date
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_start_date_input_date}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_start_date_input_hour}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_start_date_input_minus}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_start_date_placeholder}    DD/MM/YY

    Page Should Contain Element    ${admin_manage_promotion_filter_panel_end_date_lbl}            End Date
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_end_date_input_date}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_end_date_input_hour}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_end_date_input_minus}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_end_date_placeholder}    DD/MM/YY

    Page Should Contain Element    ${admin_manage_promotion_filter_panel_type_lbl}                Type
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_type_dropdown_select}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_type_placeholder}        No option selected

    Page Should Contain Element    ${admin_manage_promotion_filter_panel_condition_lbl}                Condition
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_condition_dropdown_select}
    Page Should Contain Element    ${admin_manage_promotion_filter_panel_condition_placeholder}        No option selected