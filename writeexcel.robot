***Settings***
Library        Selenium2Library
Library        String
Library        BuiltIn
Library        openpyxl

***Variables***
# ${excel}    D:\RobotReadExcel\DataTest\Customer.xlsx
${excel}    Customer.xlsx

***Keywords***
เขียนข้อมูลลง Excel File
    ${wb}   Load Workbook  ${CURDIR}/${excel}  # ${CURDIR} : การบอกว่าอยู่ใน Current path นี้นะ
    ${ws}   Set Variable   ${wb.get_sheet_by_name('Customer')}  # get_sheet_by_name: เลือกชีทที่จะใช้
    Log To Console  ${ws}
    Evaluate    $ws.cell(7,1,7)  #row,column,data Evaluate:Write
    Evaluate    $ws.cell(7,2,"Susumiya Haruhi")  #row,column,data Evaluate:Write
    Evaluate    $ws.cell(7,3,50)  #row,column,data Evaluate:Write
    Evaluate    $ws.cell(7,4,165)  #row,column,data Evaluate:Write
    Evaluate    $wb.save('${excel}')
***Test Cases***
ทดสอบการอ่านข้อมูลจาก Excel
   เขียนข้อมูลลง Excel File