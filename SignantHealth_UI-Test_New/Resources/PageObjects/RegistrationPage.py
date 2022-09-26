try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    ROBOT = False
except Exception:
    ROBOT = False

from BasePage import BasePage
import registration_locators


class RegistrationPage(BasePage):

    @keyword("Click Reg Link")
    def click_register_link(self):
        self.click_element(registration_locators.register_link)

    def enter_username(self, username):
        self.enter_value(registration_locators.username_field, username)

    def enter_password(self, password):
        self.enter_value(registration_locators.password_field, password)

    def enter_firstname(self, firstname):
        self.enter_value(registration_locators.firstname_field, firstname)

    def enter_lastname(self, lastname):
        self.enter_value(registration_locators.lastname_field, lastname)

    def enter_phone_number(self, number):
        self.enter_value(registration_locators.phone_field, number)

    def click_register_button(self):
        self.click_element(registration_locators.register_button)
