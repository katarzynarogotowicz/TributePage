*** Settings ***
Library           Selenium2Library
Documentation     https://www.freecodecamp.org/learn/responsive-web-design/responsive-web-design-projects/build-a-tribute-page

*** Variables ***
${TRIBUTE PAGE}   C:/Users/R Co/WebSite/TributePage/TributePage.html
${BROWSER}        Chrome

*** Test Cases ***
Check open Tribute Page
  When Tribute Page is opened
  Then The expected title page should be 'Albert Einstein Tribute Page'
  [Teardown]  Close Browser

Check link operation switch to another tab
  When Tribute Page is opened
  Given Link on page is clicked
  Then New window should be open
  [Teardown]  Close Browser

*** Keywords ***
Tribute Page is opened
    Open Browser                        ${TRIBUTE PAGE}    ${BROWSER}

The expected title page should be '${title}'
    Title should be                     ${title}

Link on page is clicked
    Click link                          id=tribute-link

New window should be open
    Select window                       title=Albert Einstein – Wikipedia, wolna encyklopedia
    Page should contain                 Einstein jest uważany za jednego z największych lub największego fizyka XX wieku
