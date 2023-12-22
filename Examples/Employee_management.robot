*** Settings ***
Resource    common_tp.robot

***Variables***
${url}=   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${login}=   Admin
${password}=   admin123
${link}=   /web/index.php/pim/viewPimModule
${firstname}=   randomfirstname
${newfirstname}=   2
${lastname}=   randomlastname
${randomlogin}=   login
${randompassword}=   Password123
${logout}=   /web/index.php/auth/logout
${idemployee}=   1234

***Test Cases***
Login
    #[Tags]   tp_orangehrm
    # Step 1 : aller sur le site : https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    Given the visitor is on "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
    # Step 2 : se connecter
    AND the visitor log in
    # Step 3 : on est connecté 
    Then the visitor is logged in

Add
    # Step 1 : aller sur le site : https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    Given the visitor is on "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
    # Step 2 : se connecter 
    AND the visitor log in 
    # Step 3 : cliquer sur PIM
    AND the visitor click on "/web/index.php/pim/viewPimModule"
    # Step 4 : cliquer sur "Add"
    AND the visitor click on the button "Add"
    # Step 5 : remplir le formulaire
    AND the visitor fill the form
    # Step 6 : envoyer le formulaire
    AND the visitor submit the form to add
    # Step 7 : l'employé est crée
    THEN employee is created
Update
    # Step 1 : aller sur le site : https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    Given the visitor is on "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
    # Step 2 : se connecter 
    AND the visitor log in 
    # Step 3 : cliquer sur PIM
    AND the visitor click on "/web/index.php/pim/viewPimModule"
    # Step 4 : chercher l'employé
    AND look for employee
    # Step 5 : modifier une valeur de l'employé
    AND change employee name
    # Step 6 : l'employé a été modifié
    THEN employee name changed

Delete
    # Step 1 : aller sur le site : https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
    Given the visitor is on "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login"
    # Step 2 : se connecter 
    AND the visitor log in 
    # Step 3 : cliquer sur PIM
    AND the visitor click on "/web/index.php/pim/viewPimModule"
    # Step 4 : supprimer l'employée 
    AND delete employee
    # Step 5 : l'employée e été supprimer
    THEN employee got deleted
    
Employes Managment Robot Test
    [Tags]   tp_orangehrm
    # Step 1 : aller sur le site https://opensource-demo.orangehrmlive.com/web/index.php/auth/login connecté avec le compte générique (Username:Admin, Password:admin123)
    Given the visitor is on "https://opensource-demo.orangehrmlive.com/web/index.php/auth/login" and logged in 
    # Step 2 : cliquer dans le menu sur la page "PIM"
    AND the visitor click on the page "/web/index.php/pim/viewPimModule"
    # Step 3 : Ajouter un utilisateur avec création de login (checkbox "Create Login Details")
    AND the visitor add an employee with login
    # Step 4 : Rechercher l'utilisateur précédemment créé
    AND the visitor looks for the previously created employee
    # Step 5 : Modifier les informations de l'utilisateur recherché
    AND the visitor changes informations about the searched employee
    # Step 6 : Supprimmer l'utilisateur modifié
    AND the visitor delete the modified employee
    # Step 7 : Se déconnecter
    AND the visitor logs out
    # Step 8 : Vérifier que nous sommes revenus sur la page de connexion
    THEN the visitor is on the authentication page

