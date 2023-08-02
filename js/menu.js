

const modal_password = document.getElementById('passwordForm');
/* const password = document.getElementById("edit_password"); // Cambiar Contraseña */


modal_password.addEventListener('submit', function(event) {
    event.preventDefault(); // Evita que el formulario se envíe automáticamente


   
    const password1 = modal_password.password1.value;
    const password2 = modal_password.password2.value;
    const password3 = modal_password.password3.value;

    if (password2 !== password3) {
       
        // Las contraseñas no coinciden, muestra un mensaje de error
         if (!document.getElementById('msj')) {
            const errorMessage = document.createElement('p');
            errorMessage.id = 'msj';
            errorMessage.className = 'text-red-500 w-full text-center text-[15.5px] absolute transform duration-500 ease-in-out bottom-32';
            errorMessage.textContent = 'Las contraseñas no coinciden, Inténtelo nuevamente.';
            modal_password.appendChild(errorMessage);
        }   

        Msj();

    } else {
        // Las contraseñas coinciden, puedes enviar el formulario
        console.log("las contraseñas coinciden")
        alert("coinciden")
        this.submit();
    }
});




    
  

   
   