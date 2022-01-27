*** Settings ***
Documentation       CSV library handling
Library             RPA.Tables
Library            PythonCodes/FileHandling.py

*** Keywords ***
Read Data From CSV File 
    [Arguments]      ${FileName}    ${ColumnName}
    ${table}=        Read table from CSV   ${FileName}
    ${data}=   Get Table Column  ${table}    ${ColumnName}
    [Return]    ${data}
