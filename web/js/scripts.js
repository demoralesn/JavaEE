/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {




    $("input[type='text']").on("keypress keyup blur", function (event) {
        $(this).val($(this).val().replace(/[^0-9\.]/g, ''));
        if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
            event.preventDefault();
        }
    });


    $('#form1').submit(function () {
        $.ajax({
            url: 'OperacionesServlet',
            type: 'POST',
            datatype: 'json',
            data: $('#form1').serialize(),

            success: function (data) {
                $('#resultado').html('El resultado de la operacion es: ' + data.resultado);
            }
        });
        return false;
    });
});


// forceNumeric() plug-in implementation
jQuery.fn.forceNumeric = function () {

    return this.each(function () {
        $(this).keydown(function (e) {
            var key = e.which || e.keyCode;

            if (!e.shiftKey && !e.altKey && !e.ctrlKey &&
                    // numbers   
                    key >= 48 && key <= 57 ||
                    // Numeric keypad
                    key >= 96 && key <= 105 ||
                    // comma, period and minus, . on keypad
                    key == 190 || key == 188 || key == 109 || key == 110 ||
                    // Backspace and Tab and Enter
                    key == 8 || key == 9 || key == 13 ||
                    // Home and End
                    key == 35 || key == 36 ||
                    // left and right arrows
                    key == 37 || key == 39 ||
                    // Del and Ins
                    key == 46 || key == 45)
                return true;

            return false;
        });
    });
}