from urllib import parse
from robot.api.deco import keyword
import urllib

class UrlEncoder:
    @keyword("Encode Url")
    def encode_url(self, url: str):
        urllib.parse.unquote
        return parse.quote(url)
