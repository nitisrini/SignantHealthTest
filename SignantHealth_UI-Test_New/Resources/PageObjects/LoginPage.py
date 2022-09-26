from BasePage import BasePage
import login_locators


class LoginPage(BasePage):

    def click_login_link(self):
        self.click_element(login_locators.login_link)

    def click_login_button(self):
        self.click_element(login_locators.login_button)
