try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword

    ROBOT = False
except Exception:
    ROBOT = False

from pathlib import Path
import subprocess
from selenium import webdriver
from webdrivermanager.chrome import ChromeDriverManager
from webdrivermanager.gecko import GeckoDriverManager


class Drivers:
    __driver_path = None

    @classmethod
    def __get_driver_path(cls, driver_manager):
        if not cls.__driver_path:
            cls.__driver_path = driver_manager.download_and_install()[1]
            logger.debug(f"Driver path is: {cls.__driver_path}")

        return cls.__driver_path

    @classmethod
    def get_driver(cls, browser):
        _driver = None

        if browser.lower() == 'chrome':
            chrome_options = webdriver.ChromeOptions()
            chrome_options.headless = True
            _driver = webdriver.Chrome(options=chrome_options, executable_path=cls.__get_driver_path(ChromeDriverManager()))

        if browser.lower() == 'firefox':
            firefox_options = webdriver.FirefoxOptions()
            firefox_options.headless = True
            _driver = webdriver.Firefox(options=firefox_options, executable_path=cls.__get_driver_path(GeckoDriverManager()))

        return _driver

    @classmethod
    def clear_drivers(cls):
        chrome_bin_path = ChromeDriverManager().get_download_path()
        gecko_bin_path = GeckoDriverManager().get_download_path()

        chrome_bin_path = Path(Path.joinpath(chrome_bin_path), "..")
        gecko_bin_path = Path(Path.joinpath(gecko_bin_path), "..")

        # rmdir /s /q C:\Users\*\AppData\Local\rasjani\WebDriverManager
        # Clear chrome driver if exist
        if chrome_bin_path.exists():
            subprocess.run(["rmdir", "/s", "/q", chrome_bin_path], shell=True)

        # Clear gecko driver if exist
        if gecko_bin_path.exists():
            subprocess.run(["rmdir", "/s", "/q", gecko_bin_path], shell=True)
