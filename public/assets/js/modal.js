import Swal from 'sweetalert2';

const botonInformacion = document.getElementById('boton-informacion');

botonInformacion.addEventListener('click', mostrarInformacion);

function mostrarInformacion() {
    const tipo = 'informacion';
    
    switch (tipo) {
        case 'informacion':
            Swal.fire({
                title: 'Información',
                text: 'Este es un mensaje de información',
                icon: 'info',
                confirmButtonText: 'Cerrar'
            });
            break;
        case 'advertencia':
            Swal.fire({
                title: 'Advertencia',
                text: 'Este es un mensaje de advertencia',
                icon: 'warning',
                confirmButtonText: 'Cerrar'
            });
            break;
        case 'error':
            Swal.fire({
                title: 'Error',
                text: 'Este es un mensaje de error',
                icon: 'error',
                confirmButtonText: 'Cerrar'
            });
            break;
        default:
            Swal.fire({
                title: 'Mensaje',
                text: 'Este es un mensaje genérico',
                icon: 'success',
                confirmButtonText: 'Cerrar'
            });
    }
}