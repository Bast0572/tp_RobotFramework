***Keywords***

the visitor is on "${url}"
    SeleniumLibrary.Open Browser    ${url}  chrome
    Sleep  2s
the visitor fill the login form 
    Input Text  username    ${login}
    Input Text  password    ${password}
    Sleep  1s
the visitor submit the login form
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
    sleep  3s
the visitor is connected
    Location Should Be   ${url2}


the visitor is on the page "${link}"
    Location Should Be  https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewSystemUsers
the visitor click on the add button
    Click Button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[1]/button
    Sleep  4s
the visitor fill the add form
    Click element   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div
    SeleniumLibrary.Press Keys   none    ARROW_DOWN
    Sleep   1s
    SeleniumLibrary.Press Keys  none  ARROW_DOWN
    Sleep  1s
    SeleniumLibrary.Press Keys  none  RETURN
    Sleep  1s
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input  a
    Sleep  3s 
    SeleniumLibrary.Press Keys  none   ARROW_DOWN
    Sleep  3s
    SeleniumLibrary.Press Keys  none   RETURN
    Sleep  3s
    Click element   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div   
    Sleep   1s
    SeleniumLibrary.Press Keys  none   ARROW_DOWN
    Sleep  1s
    SeleniumLibrary.Press Keys  none   RETURN
    Sleep  3s
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input    ${username}
    Sleep  1s
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input   ${password}
    Sleep  1s
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input   ${password}
    Sleep  1s

the visitor submit the add form
    click button   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]
    Sleep  5s
the visitor added a user
    Location should be  https://opensource-demo.orangehrmlive.com/web/index.php/admin/viewSystemUsers
the visitor is on the user search page
    Click link  ${link}
    Sleep  2s
the visitor looks for the user previously created
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input   ${username}
    Sleep  1s
    Click button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
    Sleep  5s
    Click button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[6]/div/button[2]
    Sleep  5s
the visitor found the user       
    Location should contain  https://opensource-demo.orangehrmlive.com/web/index.php/admin/saveSystemUser/
    
the visitor make a change on the user's informations
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input     ${newusername}
    Sleep  1s
the visitor save the changes
    Click button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/button[2]
    Sleep  5s


the user infos has changed
    Page should contain     ${username}${newusername}

the visitor looks for the user previously modified
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input   ${username}${newusername}
    Sleep  1s
    Click button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
    Sleep  3s

the visitor delete the user
    Sleep  3s
    Click button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[6]/div/button[1]
    Sleep  1s
    Click button  //*[@id="app"]/div[3]/div/div/div/div[3]/button[2]
    Sleep  3s
the visitor is ready to disconnect
    Sleep  3s









the visitor is on "${url}" and logged in
    SeleniumLibrary.Open Browser    ${url}    chrome
    Sleep   2s
    Input Text  username    ${login}
    Input Text  password    ${password}
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--main orangehrm-login-button"]
    Sleep   4s
the visitor click on the page "${link}"
    
    Click Link   ${link}
    Sleep  4s   
the visitor add an employee with login
    
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--secondary"]
    Sleep  5s
    #Select checkbox     //input[@type="checkbox"]  
    Click element  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[2]/div/label/span
    Sleep  5s
    Input Text  firstName    ${firstname}
    Input Text  lastName    ${lastname}
    Input text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[1]/div[2]/div/div/div[2]/input   ${idemployee}
    Input Text  //div[@class="oxd-input-group oxd-input-field-bottom-space"]//*[@autocomplete="off"]    ${randomlogin}
    Sleep   3s
    Input Text  //div[@class="oxd-input-group oxd-input-field-bottom-space"]//*[@type="password"]    ${randompassword}
    Sleep   3
    Input Text  //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div[2]/div[4]/div/div[2]/div/div[2]/input    ${randompassword} 
    Sleep   3s
    Click Button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/button[2] 
    Sleep   8s
    
    
the visitor looks for the previously created employee  
    
    Click Link   ${link}
    Sleep   5s
    
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input    ${firstname}
    Sleep  2s
    Click Button    //button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space"]
    Sleep  3s
    Click Button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[9]/div/button[2]
    Sleep   5s
the visitor changes informations about the searched employee
   
    Input Text   firstName     ${newfirstname}
    Sleep  3s
    Click Button   //*[@id="app"]/div[1]/div[2]/div[2]/div/div/div/div[2]/div[1]/form/div[5]/button
    Sleep  5s 
    Page Should Contain  ${new_first_name}
the visitor delete the modified employee
    
    Click Link   ${link}
    Sleep  5s
    Input Text    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/div/div/input    ${firstname}${newfirstname}
    Click Button   //*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[2]/button[2]
    Sleep   3s
    Click Button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div[2]/div[3]/div/div[2]/div/div/div[9]/div/button[1]
    Sleep   3s
    Click Button    //*[@id="app"]/div[3]/div/div/div/div[3]/button[2]
    Sleep   3s
    
the visitor logs out
    Click Element  //*[@id="app"]/div[1]/div[1]/header/div[1]/div[2]/ul/li/span
    Sleep   1s
    Click Link   ${logout}
    Sleep   5s
the visitor is on the authentication page
    
    Location Should Be   ${url}