*** Settings ***
Documentation   Launch Google search and search the result.
Library     RPA.Browser
Library     RPA.Tables
Library    RPA.Desktop
Resource     KeywordLibraries/excel.robot
Resource    KeywordLibraries/browser.robot
Resource    KeywordLibraries/desktop_tasks.robot

*** Variables ***
${APP_URL}     https://www.google.com
${BROWSER1}    Chrome
${BROWSER2}    Firefox

*** Tasks ***
Read Data from CSV and search in Google
    @{testdata}=     Read Data From CSV File     ./DataSets/data.csv   TestData
    Open website in browser    ${APP_URL}        ${BROWSER1}
    Search for data one by one from     @{testdata}
    Close Browser
    


*** Tasks ***
Read Data from CSV and search in Google
    @{testdata}=     Read Data From CSV File     ./DataSets/data.csv   Result
    Open website in browser    ${APP_URL}        ${BROWSER2}
    Search for data one by one from     @{testdata}
    Close Browser


*** Tasks ***
Open Calculator
    Perform calculation    5678976543217654221567    '*'    2



*** Tasks ***
Open pycharm
        ${element}=    Wait For Element    image:Resources/Images/pycharmicon-path.png
        Click    ${element}
        ${element_close_btn}=    Wait For Element    image:Resources/Images/pycharm_close_btn-path.png
        Click    ${element_close_btn}

*** Tasks ***
Open Sudoku
   Open Application    gnome-sudoku
   ${btn_easy} =    Wait For Element    alias:btn_easy_sudoku
   Find Element    alias:btn_easy_sudoku
   Click    alias:btn_easy_sudoku
   Sleep    2
   Click    alias:Sudoku.Maximize
   Sleep   3
   ${element_all} =   Find Elements    alias:Sudoku.BlankArea_Type4
   Sleep  3
   FOR    ${element}    IN    @{element_all}
       Log    ${element}
       Click    ${element}
   END
   Sleep  3