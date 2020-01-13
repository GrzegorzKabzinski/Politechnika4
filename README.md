# GET /myparser/index

Generates employees page containing first name, last name, department and title for [ https://adm.edu.p.lodz.pl/](https://adm.edu.p.lodz.pl/user/users.php?search=znajd%C5%BA+pracownika&x=0&y=0).

# Resource URL

`localhost:3000/employee/index`

## Resource Information

|                |                          	|                         
|----------------|-------------------------------|
|Response formats|html page          |
|Requires authentication?         |No            |



## Parameters
|     Name           |Required                          |Description                         | Example |
|----------------|-------------------------------|-----------------------------|------------------|
|search_phrase|required            | Parameter by which employees will be searched                     | Kapusta

# Example Request

`GET localhost:3000/employee/index?search_phrase=Kapusta`

# Example Response

```<!DOCTYPE html>
   <html>
   
   <head>
   	<title>MyApi5</title>
   	<meta name="csrf-param" content="authenticity_token" />
   	<meta name="csrf-token"
   		content="9xR7B0qAvpznH+YjMox7IQ3IQcEnOpGwoEnaDIj57L3APUvg6v6ht5B+YA/IlSqXFNxTvObqQRhvazGp6pbl5A==" />
   
   
   	<link rel="stylesheet" media="all"
   		href="/assets/employee.self-4b24f01d499d7747a75e9fa70a7f1dc114a49a2dfb4b2d0a38daa9f9581b9de1.css?body=1"
   		data-turbolinks-track="reload" />
   	<link rel="stylesheet" media="all"
   		href="/assets/application.self-f0d704deea029cf000697e2c0181ec173a1b474645466ed843eb5ee7bb215794.css?body=1"
   		data-turbolinks-track="reload" />
   	<script src="/assets/rails-ujs.self-43e81c501e7e36871a34b4b950451cc7cb047af4e846ec742539e64724582452.js?body=1"
   		data-turbolinks-track="reload"></script>
   	<script src="/assets/activestorage.self-1ed4604ac2170045f1ffca4edb81a75246661555e4f9cf682bb8a21825e32e1c.js?body=1"
   		data-turbolinks-track="reload"></script>
   	<script src="/assets/turbolinks.self-569ee74eaa15c1e2019317ff770b8769b1ec033a0f572a485f64c82ddc8f989e.js?body=1"
   		data-turbolinks-track="reload"></script>
   	<script src="/assets/action_cable.self-69fddfcddf4fdef9828648f9330d6ce108b93b82b0b8d3affffc59a114853451.js?body=1"
   		data-turbolinks-track="reload"></script>
   	<script src="/assets/cable.self-8484513823f404ed0c0f039f75243bfdede7af7919dda65f2e66391252443ce9.js?body=1"
   		data-turbolinks-track="reload"></script>
   	<script src="/assets/employee.self-877aef30ae1b040ab8a3aba4e3e309a11d7f2612f44dde450b5c157aa5f95c05.js?body=1"
   		data-turbolinks-track="reload"></script>
   	<script src="/assets/application.self-66347cf0a4cb1f26f76868b4697a9eee457c8c3a6da80c6fdd76ff77e911715e.js?body=1"
   		data-turbolinks-track="reload"></script>
   </head>
   
   <body>
   	<div class='userlist userdetails'>
   		<div class='user-profile'>
   			<h1>
   				Tadeusz Kapusta
   			</h1>
   			<h2>
   				dr inż.
   			</h2>
   			<h3>
   				I10
   			</h3>
   			<div class='buttons'>
   				<a href="https://adm.edu.p.lodz.pl/user/view.php?id=1593">Publiczny profil</a>
   				<form class="button_to" method="get" action="/employee/vcard">
   					<input type="submit" value="Wygeneruj vCard" /><input type="hidden" name="full_name" value="Tadeusz Kapusta" /></form>
   			</div>
   		</div>
   
   		<div class='user-profile'>
   			<h1>
   				Paweł Kapusta
   			</h1>
   			<h2>
   				dr inż.
   			</h2>
   			<h3>
   				I24 - Instytut Informatyki Stosowanej
   			</h3>
   			<div class='buttons'>
   				<a href="https://adm.edu.p.lodz.pl/user/view.php?id=3016">Publiczny profil</a>
   				<form class="button_to" method="get" action="/employee/vcard">
   					<input type="submit" value="Wygeneruj vCard" /><input type="hidden" name="full_name" value="Paweł Kapusta" /></form>
   			</div>
   		</div>
   
   		<div class='user-profile'>
   			<h1>
   				Henryk Kapusta
   			</h1>
   			<h2>
   				dr hab. inż.
   			</h2>
   			<h3>
   				K411 - Katedra Mechaniki i Informatyki Technicznej
   			</h3>
   			<div class='buttons'>
   				<a href="https://adm.edu.p.lodz.pl/user/view.php?id=4656">Publiczny profil</a>
   				<form class="button_to" method="get" action="/employee/vcard">
   					<input type="submit" value="Wygeneruj vCard" /><input type="hidden" name="full_name" value="Henryk Kapusta" /></form>
   			</div>
   		</div>
   
   	</div>
   
   </body>
   
   </html>
```

# Generate VCard Response

```
BEGIN:VCARD
VERSION:4.0
N:Paweł;Kapusta;;;
FN:Paweł Kapusta
END:VCARD
```

