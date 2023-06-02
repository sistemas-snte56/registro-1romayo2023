$(document).ready(function(){
    $('#region').on('change',function () {
        var id = $(this).val();
        // console.log(id);
        if (id) {
            $.ajax({
                url:'/admin/usuarios/region/'+id,
                type: 'GET',
                dataType: 'json',
                success : function(data) {
                    $('#delegacion').empty().append('<option value="">Selecciona opción</option>');
                    $.each(data, function(key, value){
                        $('#delegacion').append('<option value="'+ value['id'] +'">' + value['delegacion'] + ' &nbsp ' +  value['nivel'] + ', &nbsp ' + value['sede'] + '</option>');
                    });
                    $('#delegacion').prop('disabled', false);
                },
                error : function(jqXHR, textStatus, errorThrown) {
                    if (jqXHR.status == 404) {
                        // alert('La ruta especificada no existe');
                        console.log(textStatus);
                        console.log(errorThrown);
                    } else {
                        // alert('Ocurrió un error al procesar la petición');
                        console.log(textStatus);
                        console.log(errorThrown);
                    }
                }
            });
        } else {
            $('#delegacion').empty().append('<option value="">Selecciona opción</option>');
            $('#delegacion').prop('disabled',true);
        }
    });

    $('#nomenclatura').on('change',function (){
        var valorSeleccionado = $(this).val();
        // console.log(valorSeleccionado);
        // if (valorSeleccionado === 'DELEGACION') {
        //     var inputPlaceholder = document.getElementById('delegacion');
        //     inputPlaceholder.setAttribute('placeholder','Ejemplo: D-X-000, sin espacios.')
        // } else {
        //     var inputPlaceholder = document.getElementById('delegacion');
        //     inputPlaceholder.setAttribute('placeholder','Ejemplo: C.T.000, sin espacios.')
        // }

        if (valorSeleccionado === 'delegacion') {
            $('#delegacion').attr('placeholder','Ejemplo: D-X-000, sin espacios.')
        } else {
            $('#delegacion').attr('placeholder','Ejemplo: C.T.000, sin espacios.')
        }
    });

});