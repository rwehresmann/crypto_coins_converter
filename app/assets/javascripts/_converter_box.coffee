$(document).on 'turbolinks:load', ->
  CoinWidgetCom.go
    wallet_address: '14qNSyVPtFh4twWLD7f5nuosb2MZCxcuPh'
    currency: 'bitcoin'
    counter: 'hide'
    lbl_button: I18n.home.index.donation_btn_title
    lbl_count: 'donations'
    lbl_amount: 'BTC'
    lbl_address: I18n.home.index.donation_ask_msg
    qrcode: true
    alignment: 'bl'
    decimals: 8
    size: 'big'
    color: 'dark'
    countdownFrom: '0'
    element: '#coinwidget-bitcoin-14qNSyVPtFh4twWLD7f5nuosb2MZCxcuPh'

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
