*** Settings ***
Resource    common_tp.robot

***Variables***
${url}=   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${url2}=    https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index
${login}=   Admin
${password}=   admin123
${link}=   /web/index.php/admin/viewAdminModule
${username}=   RobotFramework
${newusername}=   2

${randompassword}=   Password123
${logout}=   /web/index.php/auth/logout
${idemployee}=   1234

***Test Cases***
User Management Robot Test
    [Tags]   User_management
    # Step 1 : aller sur le site https://opensource-demo.orangehrmlive.com/web/index.php/auth/login connecté avec le compte générique (Username:Admin, Password:admin123)
    Given the visitor is on "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
    When the visitor fill the login form
    And the visitor submit the login form 
    Then the visitor is connected
    # Step 2 : cliquer dans le menu sur la page "Admin"
    Given the visitor is connected
    When the visitor click on the page "/web/index.php/admin/viewAdminModule"
    Then the visitor is on the page "/web/index.php/admin/viewAdminModule" 
    # Step 3 : Ajouter un utilisateur
    Given the visitor is on the page "/web/index.php/admin/viewAdminModule"
    When the visitor click on the add button
    AND the visitor fill the add form
    AND the visitor submit the add form 
    Then the visitor added a user
    # Step 4 : Recherche l'utilisateur créé
    Given the visitor is on the user search page
    When the visitor looks for the user previously created
    Then the visitor found the user
    # Step 5 : Modifier les informations de l'utilisateur recherché
    Given the visitor found the user
    When the visitor make a change on the user's informations
    And the visitor save the changes
    Then the user infos has changed
    # Step 6 : Supprimer l'utilisateur modifié
    Given the visitor is on the user search page
    When the visitor looks for the user previously modified
    Then the visitor delete the user
    # Step 7 : Se déconnecter 
    Given the visitor is ready to disconnect
    Then the visitor logs out 
    # Step 8 : Vérifier que nous sommes revenus sur la page de connexion
    Then the visitor is on the authentication page