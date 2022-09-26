try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    ROBOT = False
except Exception:
    ROBOT = False

from selenium.webdriver.support.wait import WebDriverWait
from Drivers import Drivers


class BasePage(Drivers):

    _wait = None
    _driver = None

    @classmethod
    def initiate_driver(cls, browser):
        cls._driver = cls.get_driver(browser)
        cls._wait = WebDriverWait(cls._driver, 5)

    def open_page(self, url):
        self._driver.get(url)
        self._driver.maximize_window()

    def close_page(self):
        self._driver.quit()
        self.clear_drivers()

    def __get_element(self, locator):
        return self._driver.find_element(*locator)

    def __get_elements(self, locator):
        return self._driver.find_elements(*locator)

    def enter_value(self, locator, value):
        element = self.__get_element(locator)
        element.clear()
        element.send_keys(value)

    def click_element(self, locator):
        self.__get_element(locator).click()

    def get_element_text(self, locator):
        return self.__get_element(locator).text

    def is_element_displayed(self, locator):
        return self.__get_element(locator).is_displayed()

    def is_equal(self, expected, actual, message):
        BuiltIn().should_be_equal(first=expected, second=actual, msg=message)
