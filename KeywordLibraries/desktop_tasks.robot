*** Settings ***
Documentation    This robot to perform UI automation
Library    RPA.Desktop
Library    RPA.Robocorp.Process
Library    RPA.Desktop.OperatingSystem
Library    Process
Library    PythonCodes/Number.py



*** Keywords ***
Perform calculation
    [Arguments]    ${number1}    ${operation}    ${number2}
    Open Application    gnome-calculator
    ${element}=    Wait For Element    image:.images/btn5-path.png
    ${number1_collection} =  Extract digit from  ${number1}
    FOR    ${num}    IN    @{number1_collection}
             Press Button    ${num}   
    END
    Press Button    ${operation}
    ${number2_collection} =  Extract digit from  ${number2}
    FOR    ${num}    IN    @{number2_collection}
             Press Button    ${num}   
    END
    Click    alias:btn_equal_calculator
    Sleep    5


*** Keywords ***
Press Button
    [Arguments]    ${btn1}
   # Press Keys    alt    F2
    IF    ${btn1} == 5
            Click    image:.images/btn5-path.png
    ELSE IF  ${btn1} == 1
            Click    alias:Calculator.Btn1
    ELSE IF  ${btn1} == 2
            Click    alias:Calculator.Btn2
    ELSE IF  ${btn1} == 3
            Click    alias:Calculator.Btn3
    ELSE IF  ${btn1} == 4
            Click    alias:Calculator.Btn4
    ELSE IF  ${btn1} == 6
            Click    alias:Calculator.Btn6
    ELSE IF  ${btn1} == 7
            Click    alias:btn7_calculator
    ELSE IF  ${btn1} == 8
            Click    alias:Calculator.Btn8
    ELSE IF  ${btn1} == 9
            Click    alias:Calculator.Btn9
    ELSE IF  ${btn1} == 0
            Click    alias:Calculator.Btn0
    ELSE IF  ${btn1} == '+'
            Click    alias:btn_sum_calculator
    ELSE IF  ${btn1} == '-'
            Click    alias:Calculator.Minus
    ELSE IF  ${btn1} == '*'
            Click    alias:Calculator.Multiply
    ELSE IF  ${btn1} == '/'
            Click    alias:Calculator.Division
    END
#     IF    ${btn2} == 5
#             Click    image:.images/btn5-path.png
#     ELSE IF  ${btn2} == 1
#             Click    alias:Calculator.Btn1
#     ELSE IF  ${btn2} == 2
#             Click    alias:Calculator.Btn2
#     ELSE IF  ${btn2} == 3
#             Click    alias:Calculator.Btn3
#     ELSE IF  ${btn2} == 4
#             Click    alias:Calculator.Btn4
#     ELSE IF  ${btn2} == 6
#             Click    alias:Calculator.Btn6
#     ELSE IF  ${btn2} == 7
#             Click    alias:btn7_calculator
#     ELSE IF  ${btn2} == 8
#             Click    alias:Calculator.Btn8
#     ELSE IF  ${btn2} == 9
#             Click    alias:Calculator.Btn9
#     END
#     Click    alias:btn_equal_calculator


