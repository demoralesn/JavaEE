/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function () {

    $(function () {

        $('.number-only').keyup(function (e) {
            if (this.value != '-')
                while (isNaN(this.value))
                    this.value = this.value.split('').reverse().join('').replace(/[\D]/i, '')
                            .split('').reverse().join('');
        })
                .on("cut copy paste", function (e) {
                    e.preventDefault();
                });

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