UsersController = Paloma.controller('Users')

# UsersController::index = ->

UsersController::new = ->
  $('form').submit (e) -> 
    validar_formulario(e)

validar_formulario = (e) ->
  email_user = $('#user_email')
  user_password = $('#user_password')
  user_full_name = $('#user_full_name')
  user_rfc = $('#user_rfc')
  user_company_name = $('#user_company_name')

  error_msg = $('#msg_error')
  pass_error = $('#pass_error_msg')
  rfc_error = $('#rfc_error_msg')
  validation_faild = false

  if email_user.val() == ''
    email_user.css({"border": "solid 2px red"})
    validation_faild = true    
  
  pass_len = user_password.val()
  if (pass_len.length > 0 && pass_len.length < 6) || user_password.val() == ''
    pass_error.text('Contraseña: Minimo 6 caracteres')
    user_password.css({"border": "solid 2px red"})
    validation_faild = true  

  if user_full_name.val() == ''
    user_full_name.css({"border": "solid 2px red"})
    validation_faild = true

  rfc_len = user_rfc.val()
  if (rfc_len.length <= 12 && rfc_len.length >= 13) || user_rfc.val() == ''
    rfc_error.text('RFC Invalido')
    user_rfc.css({"border": "solid 2px red"})
    validation_faild = true

  if user_company_name.val() == ''
    user_company_name.css({"border": "solid 2px red"})
    validation_faild = true

  if validation_faild
    error_msg.text('Campos Requeridos') 
    e.preventDefault()
    return false


