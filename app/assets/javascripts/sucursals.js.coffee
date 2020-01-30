SucursalsController = Paloma.controller('Sucursals')

SucursalsController::new = ->
  $('form').submit (e) ->
    validar_formulario(e)

validar_formulario = (e) ->
  sucursal_name = $('#sucursal_sucursal_name')
  sucursal_add = $('#sucursal_sucursal_add')
  sucursal_zip = $('#sucursal_zip_code')
  msg_error = $('#msg_error')
  empy_files = false

  if sucursal_name.val() == '' 
    sucursal_name.css({"border":"solid 2px red"})
    empy_files = true
    
  if sucursal_add.val() == ''
    sucursal_add.css({"border":"solid 2px red"})
    empy_files = true

  if sucursal_zip.val() == ''
    sucursal_zip.css({"border":"solid 2px red"})
    empy_files = true

  if empy_files
    msg_error.text("Todos los campos son requeridos")
    e.preventDefault()    
    return false