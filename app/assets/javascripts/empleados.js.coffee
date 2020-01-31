EmpleadosController = Paloma.controller('Empleados')

EmpleadosController::new = ->
  $('form').submit (e) ->
    validar_formulario(e)

validar_formulario = (e) ->
  empleado_name = $('#empleado_empleado_name')
  empleado_rfc = $('#empleado_empleado_rfc')
  empleado_puesto = $("#empleado_empleado_puesto")
  
  validation_faild = false
  msg_error = $("#msg_error")

  if empleado_name.val() == ''
    empleado_name.css({"border": "solid 2px red"})
    validation_faild = true

  if empleado_rfc.val() == ''
    empleado_rfc.css({"border": "solid 2px red"})
    validation_faild = true

  if empleado_puesto.val() == ''
    empleado_puesto.css({"border": "solid 2px red"})
    validation_faild = true

  if validation_faild
    e.preventDefault
    msg_error.text("Todos los campos son requeridos")
    msg_error.css({"color":"red"})
    return false