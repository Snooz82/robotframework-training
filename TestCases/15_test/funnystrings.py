#!/usr/bin/env python
# -*- coding: utf-8 -*-
from robot.api.logger import console

# from typing import Any, Optional, Union

ROBOT_LIBRARY_DOC_FORMAT = "robot"


def funnystrings(
    emp=u'a\t\t<b>Hello</b>"Häßli*ÜÖLúéch"',
    regex=r"^(?!\\s*\\.\\.\\.)",
    mulspec="Log   This has two ${space}",
    unicodisch=u"c:\\windows\\system",
    path="c:\\windows\\system32",
    bytisch=b"c:\\windows\\system32",
    onlynormal="te  st\nHe'll'o    ",
    somevars="some${scalar} ome %{env} and \\${Not} and @{list} and &{dict}[t] end",
):
    print(emp)
    print(mulspec)
    print(mulmulspec)
    print(onlynormal)
    pass
