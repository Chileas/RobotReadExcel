
***Keywords***
อ่าน Excel File
    ${wb}   Load Workbook  ${excel}  # ${CURDIR} : การบอกว่าอยู่ใน Current path นี้นะ
    # ${wb}   Load Workbook  ${CURDIR}/${excel}  # ${CURDIR} : การบอกว่าอยู่ใน Current path นี้นะ
    ${ws}   Set Variable   ${wb.get_sheet_by_name('Customer')}  # get_sheet_by_name: เลือกชีทที่จะใช้
    ${Cell}   Set Variable   ${ws.cell(2,2).value}
    ${body}   Fetch From Right   ${Cell}   {}
    Log To Console  \n${body}\n    

    
เขียนข้อมูลลง Excel File
    ${wb}   Load Workbook  ${CURDIR}/${excel}  # ${CURDIR} : การบอกว่าอยู่ใน Current path นี้นะ
    ${ws}   Set Variable   ${wb.get_sheet_by_name('Customer')}  # get_sheet_by_name: เลือกชีทที่จะใช้
    Log To Console  ${ws}
    Evaluate    $ws.cell(7,1,7)  #row,column,data Evaluate:Write
    Evaluate    $ws.cell(7,2,"Susumiya Haruhi")  #row,column,data Evaluate:Write
    Evaluate    $ws.cell(7,3,50)  #row,column,data Evaluate:Write
    Evaluate    $ws.cell(7,4,165)  #row,column,data Evaluate:Write
    Evaluate    $wb.save('${excel}')