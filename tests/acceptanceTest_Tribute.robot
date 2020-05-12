*** Settings ***
Library           Selenium2Library
Documentation     https://www.freecodecamp.org/learn/responsive-web-design/responsive-web-design-projects/build-a-tribute-page
Suite Setup      Open Browser       ${TRIBUTE PAGE}    ${BROWSER}
Suite Teardown   Close Browser


*** Variables ***
${TRIBUTE PAGE}   C:/Users/R Co/WebSite/TributePage/TributePage.html
${BROWSER}        Chrome

*** Test Cases ***
Check open page
    Open Tribute Page

Check for items are fit requirements
    Check elements html
    Check img elements
    Check tribute elements

Check link operation switch to another tab
    Check link

*** Keywords ***
Open Tribute Page
    Page should contain element   id=title
    Title should be               Albert Einstein Tribute Page

Check elements html
    Page should contain element   id=main

Check img elements
    Page should contain element   id=img-div
    Page should contain element   id=img-caption
    Page should contain           Cała nasza nauka, w porównaniu z rzeczywistością, jest prymitywna i dziecinna
    Page should contain image     id=image   #AEinstein.jpg

Check tribute elements
    Page should contain element   id=tribute-info
    Page should contain           Albert Einstein opublikował ponad 300 prac naukowych

Check link
    Click link                    id=tribute-link   #Wikipedię
    Select window                 title=Albert Einstein – Wikipedia, wolna encyklopedia
    Page should contain           Einstein jest uważany za jednego z największych lub największego fizyka XX wieku