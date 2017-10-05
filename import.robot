*** Settings ***

Documentation  Test generated by SeleniumBuilder for OpenERP 9.0 Enterprise
Resource       odoo_9_0_EE.robot
Library     ExtendedSelenium2Library
Library     String
Variables   ${CONFIG}


*** Test Cases ***
Valid Login
	Login
This is my test
	Go To	http://localhost:8069/web
	#MainMenu    93
	#SubMenu    262
	#SubSubMenu    270
	MainMenu    117
	SubMenu    254
	SubSubMenu    262
	Execute Javascript   document.getElementsByClassName("o_form_input o_hidden")[0].className = "input_file";
	#Execute Javascript   document.querySelector("input[class='input_file']").readOnly = false
	#Execute Javascript   document.querySelector("input[class='input_file']").style.display = "block";
	#Execute Javascript   document.getElementsByClassName("btn btn-sm btn-default fa fa-pencil o_select_file_button o_hidden")[0].className = "input_file";
	#input text      xpath=//input[@class='input_file']  //home//saal1//testing//git//odoo-robot-framework//odoo_10_0.robot
    Choose File     xpath=//input[@class='input_file']  ${/}home${/}saal1${/}testing${/}git${/}odoo-robot-framework${/}text.txt
    #input text      xpath=//input[@class='input_file']  //home//saal1//testing//git//odoo-robot-framework//odoo_10_0.robot
    sleep   2s
    #Button	class=btn btn-sm btn-primary o_select_file_button
    #sleep   5s
	Button	model=qst.import	button_name=import_qst

