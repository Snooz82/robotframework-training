*** Settings ***
Library    SeleniumLibrary   plugins=Waiter
Library    String
Library    Libraries/MyLib2.py
#Library    AngularJSLibrary    root_selector=app-root
Resource   Keywords/technicalKeywords.resource
Resource   Keywords/functionalKeywords.resource
