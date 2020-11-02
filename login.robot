*** Setting ***
Library    Selenium2Library
*** Variables ***
${url}		http://demo.t3-framework.org/joomla30/index.php/en/joomla-pages/sample-page-2/login-page
${browser}	chrome
${username} 	demo
${password}	password
*** Test Cases ***
LoginTest
	[Documentation]   For login test
	Open Browser  	${url}  ${browser}
	Maximize Browser Window
	Set Selenium Speed	0.1
	Input Text		id= username	${username} 
	Input Password	id=password	${password}
	Select Checkbox	id=remember
	Submit Form
	Log 		Test completed