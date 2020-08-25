*** Variables ***
# ${url_portal_test}                       https://portaltest.acommercedev.com/
${url_portal_test_login_page}              https://portaltest.acommercedev.com/
${url_portal_test_forget_password_page}    https://identity.integration.acommercedev.com/o/forget_password/

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
${admin_partner_text}                        //*[@id="wrapper"]/div[2]/div[1]/div/p[1]
${admin_header_logo}                         //*[@id="main-container"]/div/div/div[1]/div/div/div[1]/img
${admin_info_user_avatar}                    class:portal-navigation__user-info__img-avatar
${admin_info_header_text}                    //*[@id="wrapper"]/aside/div[1]/div/h4[1]
${admin_info_header_user}                    //*[@id="wrapper"]/aside/div[1]/div/h4[2]
${admin_nav_main_menu}                       class:portal-navigation__main-menu__menu--wrapper
${admin_nav_main_menu_hide}                  class:portal-navigation__main-menu__menu--hide-menu
${admin_nav_main_menu_summary}               //*[@id="summary"]
${admin_nav_main_menu_promotion}             //*[@id="promotions"]
${admin_nav_main_menu_item_amp_inventory}    //*[@id="item-amp-inventory"]
${admin_nav_main_menu_sales_orders}          //*[@id="sales-orders"]
${admin_nav_main_menu_delivery}              //*[@id="delivery"]

#--- Forget Password Page ---#
${forget_password_page_input}                     class:idp-login__body__login-form__text-box
${forget_password_username_email_input}           //*[@placeholder="Username or Email"]
${forget_password_page_submit_btn}                class:idp-login__body__login-form button
${forget_password_page_back_to_login}             class:idp-login__body__login-form h6
${forget_password_page_login_btn}                 class:idp-login__body__login-form h6 a
${forget_password_page_footer}                    /html/body/footer
${forget_password_page_footer_paragraph}          /html/body/footer/p
${forget_password_page_invalid_username_email}    //*[@oninvalid="this.style.borderColor = 'rgba(235, 87, 87, 0.4)'"]