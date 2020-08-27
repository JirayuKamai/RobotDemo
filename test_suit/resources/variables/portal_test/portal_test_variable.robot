*** Variables ***
# ${url_portal_test}                       https://portaltest.acommercedev.com/
${url_portal_test_login_page}              https://portaltest.acommercedev.com/
${url_portal_test_forget_password_page}    https://identity.integration.acommercedev.com/o/forget_password/
${url_portal_test_promotion}               https://portaltest.acommercedev.com/promotions

#--- Username & Passwotf ---#
${portaltest_username}            jirayu.k@acommerce.asia
${portaltest_password}            E=mc^2...
${portaltest_invalid_username}    invalid.user@acommerce.asia
${portaltest_invalid_password}    P@ssw0rd

#--- Login Page ---#
${portaltest_logo}                                    class:idp-login__header__logo
${portaltest_login_body}                              class:idp-login__body
${portaltest_login_body_login_form}                   class:idp-login__body__login-form
${portaltest_login_h3}                                class:idp-login__body__login-form h3
${portaltest_login_h4}                                class:idp-login__body__login-form h4
${portaltest_input_username}                          name:auth-username
${portaltest_input_password}                          name:auth-password
${portaltest_login_btn}                               class:btn.btn-primary
${portaltest_login_h6}                                class:idp-login__body__login-form h6
${portaltest_login_reset_password_link}               class:idp-login__body__login-form h6 a
${portaltest_login_footer}                            /html/body/footer
${portaltest_login_footer_paragraph}                  2018 © aCommerce - Powering Ecommerce in S.E. Asia.
${portaltest_input_username_or_password_incorrect}    class:idp-login__body__error-banner
${url_portal_test_forgot_pwd_page}                    https://identity.integration.acommercedev.com/o/forget_password/?next=/o/authorize/%3Fresponse_type%3Dcode%26redirect_uri%3Dhttps%253A%252F%252Fportaltest.acommercedev.com%252Foauth%252Fcallback%26scope%3Dstargate%2520openid%26client_id%3D71FYU0DZXPYtgmX6mNmnpHTbebDyPbYLIDWcaGVC
${portaltest_login_invalid_username_email}            //*[@oninvalid="this.style.borderColor='rgba(235, 87, 87, 0.4)'"]

#--- Admin Page ---#
${admin_partner_text}                                 //*[@id="wrapper"]/div[2]/div[1]/div/p[1]
${admin_header_logo}                                  //*[@id="main-container"]/div/div/div[1]/div/div/div[1]/img
${admin_info_user_avatar}                             class:portal-navigation__user-info__img-avatar
${admin_info_header_text}                             //*[@id="wrapper"]/aside/div[1]/div/h4[1]
${admin_info_header_user}                             //*[@id="wrapper"]/aside/div[1]/div/h4[2]
${admin_nav_main_menu}                                class:portal-navigation__main-menu__menu--wrapper
${admin_nav_main_menu_hide}                           class:portal-navigation__main-menu__menu--hide-menu
${admin_nav_main_menu_summary}                        //*[@id="summary"]
${admin_nav_main_menu_promotion}                      //*[@id="promotions"]                                          
${admin_nav_main_menu_promotion_manage_promotion}     //*[@id="promotions_manage-promotion"]
${admin_nav_main_menu_promotion_manage_base_price}    //*[@id="promotions_manage-base-price"]

${admin_nav_main_menu_item_amp_inventory}                       //*[@id="item-amp-inventory"]
${admin_nav_main_menu_item_amp_inventory_manage_item}           //*[@id="item-amp-inventory_manage-item"]
${admin_nav_main_menu_item_amp_inventory_channel_allocation}    //*[@id="item-amp-inventory_channel-allocation"]
${admin_nav_main_menu_item_amp_inventory_import_history}        //*[@id="item-amp-inventory_import-history"]

${admin_nav_main_menu_sales_orders}                        //*[@id="sales-orders"]
${admin_nav_main_menu_sales_orders_manage_sales_orders}    //*[@id="sales-orders_manage-sales-orders"]

${admin_nav_main_menu_delivery}                     //*[@id="delivery"]
${admin_nav_main_menu_delivery_shipping_orders}     //*[@id="delivery_shipping-orders"]
${admin_nav_main_menu_delivery_fleet_management}    //*[@id="delivery_fleet-management"]

#--- Forget Password Page ---#
${forget_password_page_input}                     class:idp-login__body__login-form__text-box
${forget_password_username_email_input}           //*[@placeholder="Username or Email"]
${forget_password_page_submit_btn}                class:idp-login__body__login-form button
${forget_password_page_back_to_login}             class:idp-login__body__login-form h6
${forget_password_page_login_btn}                 class:idp-login__body__login-form h6 a
${forget_password_page_footer}                    /html/body/footer
${forget_password_page_footer_paragraph}          /html/body/footer/p
${forget_password_page_invalid_username_email}    //*[@oninvalid="this.style.borderColor = 'rgba(235, 87, 87, 0.4)'"]

#--- Promotion Page ---#
${admin_manage_promotion_filter_panel}                        //*[@class="filter-panel row wells wells-no-border wells-no-vertical-margin"]
${admin_manage_promotion_filter_panel_partner_lbl}            //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[1]/div[1]/div/label
${admin_manage_promotion_filter_panel_partner_input}          //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[1]/div[1]/div/dropdown-select/ngx-select/div/input
${admin_manage_promotion_filter_panel_partner_placeholder}    //*[@placeholder="Filter by partners"]

${admin_manage_promotion_filter_panel_channel_lbl}            //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[1]/div[2]/div/label
${admin_manage_promotion_filter_panel_channel_input}          //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[1]/div[2]/div/dropdown-select/ngx-select/div/input
${admin_manage_promotion_filter_panel_channel_placeholder}    //*[@placeholder="Filter by channels"]

${admin_manage_promotion_filter_panel_promotion_name_lbl}            //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[1]/div[3]/div/label
${admin_manage_promotion_filter_panel_promotion_name_input}          //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[1]/div[3]/div/search-box/div/input
${admin_manage_promotion_filter_panel_promotion_name_btn}            //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[1]/div[3]/div/search-box/div/span/button
${admin_manage_promotion_filter_panel_promotion_name_placeholder}    //*[@placeholder="Search"]

${admin_manage_promotion_filter_panel_start_date_lbl}            //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[1]/label
${admin_manage_promotion_filter_panel_start_date_input_date}     //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[1]/datetime-picker/div/div[1]/input
${admin_manage_promotion_filter_panel_start_date_input_hour}     //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[1]/datetime-picker/div/div[2]/timepicker/table/tbody/tr[2]/td[1]/input
${admin_manage_promotion_filter_panel_start_date_input_minus}    //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[1]/datetime-picker/div/div[2]/timepicker/table/tbody/tr[2]/td[3]/input
${admin_manage_promotion_filter_panel_start_date_placeholder}    //*[@placeholder="DD/MM/YYYY"]

${admin_manage_promotion_filter_panel_end_date_lbl}            //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[2]/label
${admin_manage_promotion_filter_panel_end_date_input_date}     //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[2]/datetime-picker/div/div[1]/input
${admin_manage_promotion_filter_panel_end_date_input_hour}     //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[2]/datetime-picker/div/div[2]/timepicker/table/tbody/tr[2]/td[1]/input
${admin_manage_promotion_filter_panel_end_date_input_minus}    //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[2]/datetime-picker/div/div[2]/timepicker/table/tbody/tr[2]/td[3]/input
${admin_manage_promotion_filter_panel_end_date_placeholder}    //*[@placeholder="DD/MM/YYYY"]

${admin_manage_promotion_filter_panel_type_lbl}                //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[3]/label
${admin_manage_promotion_filter_panel_type_dropdown_select}    //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[3]/dropdown-select/ngx-select/div/div[2]/div
${admin_manage_promotion_filter_panel_type_placeholder}        //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[3]/dropdown-select/ngx-select/div/div[2]/div/span[1]

${admin_manage_promotion_filter_panel_condition_lbl}                //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[4]/label
${admin_manage_promotion_filter_panel_condition_dropdown_select}    //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[4]/dropdown-select/ngx-select/div/div[2]/div
${admin_manage_promotion_filter_panel_condition_placeholder}        //*[@id="main-container"]/app-root/div/div/app-promotion-list/div[1]/div[2]/div[4]/dropdown-select/ngx-select/div/div[2]/div/span[1]/span