Swal.fire({
    html: 'Por favor acepte nuestros terminos <a href"#"Terminos y condiciones</a>',
    confirmButtonText: 'Acepto',
    icon: 'info',


    padding: '1rem',
    //grow: 'row',
    backdrop: true,
    toast: true,
    position: 'bottom',
    allowOutsideClick: false,
    allowEscapeKey: false,
    stopKeydownPropagation: false, 
    background: '#000000',
    showConfirmButton: true,
    showCancelButton: false,
    showCloseButton: false,
    closeButtonAriaLabel: 'Cerrar esta alerta',

    customClass: {
        content: 'content-class'
    }
    
  });