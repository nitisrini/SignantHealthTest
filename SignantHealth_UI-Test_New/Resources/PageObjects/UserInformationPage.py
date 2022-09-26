from BasePage import BasePage
import user_information_locators
import registration_locators


class UserInformationPage(BasePage):

    def click_logout_link(self):
        self.click_element(user_information_locators.logout_link)

    def validate_username(self, username):
        self.is_equal(self.get_element_text(registration_locators.username_field), username, "Username is not matching")

    def validate_firstname(self, firstname):
        self.is_equal(self.get_element_text(registration_locators.firstname_field), firstname,
                      "Firstname is not matching")

    def validate_lastname(self, lastname):
        self.is_equal(self.get_element_text(registration_locators.lastname_field), lastname, "Lastname is not matching")

    def validate_phone(self, phone):
        self.is_equal(self.get_element_text(registration_locators.phone_field), phone, "Phone number is not matching")
