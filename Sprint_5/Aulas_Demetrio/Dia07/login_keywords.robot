* Settings *
Documentation               Keywords e Variaveis para ações do endpoint login

* Variables *

${email_para_login}         fulano@qa.com 
${password_para_login}      teste

* Keywords *

POST Endpoint /login
    &{payload}              Create Dictionary   email=${email_para_login}       password=${password_para_login}
    ${response}             POST on Session      serverest       /login  data=&{payload}
    Log to Console          Response: ${response.content}
    Set Global Variable     ${response}