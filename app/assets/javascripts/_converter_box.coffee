$(document).on 'turbolinks:load', ->
  $('#converter-form').change ->
    call_convert()

  $('#switch').click ->
    from_currency = $('#currency').val()
    to_currency = $('#currency_destination').val()
    $('#currency').val(to_currency)
    $('#currency_destination').val(from_currency)
    call_convert()
    event.preventDefault()

call_convert = () ->
  $.ajax $('#converter-form').attr('action'),
      type: 'POST'
      dataType: 'json'
      data: {
              currency: $("#currency").val(),
              currency_destination: $("#currency_destination").val(),
              quantity: $("#quantity").val()
            }
      error: (jqXHR, textStatus, errorThrown) ->
        alert textStatus
      success: (data, text, jqXHR) ->
        $('#result').val(data.value)
    return false;
