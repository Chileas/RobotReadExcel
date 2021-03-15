***Settings***
Library        Selenium2Library
Library        String
Library        BuiltIn
Library        openpyxl

***Variables***
# ${excel}    D:\RobotReadExcel\DataTest\Customer.xlsx
${excel}    Customer.xlsx

***Keywords***
อ่าน Excel File
    ${wb}   Load Workbook  ${CURDIR}/${excel}  # ${CURDIR} : การบอกว่าอยู่ใน Current path นี้นะ
    ${ws}   Set Variable   ${wb.get_sheet_by_name('Customer')}  # get_sheet_by_name: เลือกชีทที่จะใช้
    ${Cell}   Set Variable   ${ws.cell(2,2).value}
    ${body}   Fetch From Right   ${Cell}   {}
    Log To Console  \n\${body}\n

***Test Cases***
ทดสอบการอ่านข้อมูลจาก 

   อ่าน Excel File