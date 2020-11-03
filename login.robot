*** Setting ***
Library    Selenium2Library

*** Variables ***
${url}			http://demo.t3-framework.org/joomla30/index.php/en/joomla-pages/sample-page-2/login-page
${browser}		chrome
${username} 	demo
${password}		password

*** Test Cases ***
LoginTest
	Open Browser  	${url}  ${browser}
	Input Text		id= username	${username} 
	Input Password	id=password		${password}
	Select Checkbox	id=remember
	Click Element    xpath=//*[@class="login"]/form/fieldset/div[4]/div/button
	
	Title Should Be	Welcome Page
	Log 		Test completed
	Close Browser