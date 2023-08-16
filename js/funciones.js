// Función para mostrar la imagen seleccionada en un campo de archivo de entrada
function showImg(event) {
    
    const fileInput = event.target; // Obtener el campo de archivo de entrada
    const imagePreview = document.getElementById("imagePreview"); // Obtener el elemento de vista previa de la imagen

    if (fileInput.files && fileInput.files[0]) {
        // Si se selecciona un archivo
        const reader = new FileReader();
        reader.onload = function (e) {
            imagePreview.src = e.target.result; // Mostrar la imagen seleccionada en la vista previa
        };

        reader.readAsDataURL(fileInput.files[0]); // Leer el contenido del archivo seleccionado
    } else {
        // Si no se selecciona un archivo, mostrar la imagen predeterminada
        console.log("errors");
        imagePreview.src = `./pictures/<?php echo is_file("../pictures/photo_".$id) ? "photo_".$id : "usuario.jpg" ?>`;
    } 
}

//Mensaje de Errores y succes
function Msj(){
    const msj = document.getElementById("msj") ;
    
    if(msj){
        msj.classList.remove("bottom-8"); 
        msj.classList.add("bottom-0");    
        setTimeout(() => { 
            msj.remove();
        }, 5000); 
    }
}
Msj() ;


function updateModelos() {
        var marcaId = document.getElementById("marca").value;
        var modeloSelect = document.getElementById("modelo");
        
        // Limpia las opciones actuales del menú de modelos
        modeloSelect.innerHTML = '<option value=""  selected>Modelo</option>';
        
        // Si no se seleccionó una marca, no se realiza la consulta
        if (marcaId !== "") {
            // Realiza una solicitud AJAX para obtener los modelos de la marca seleccionada
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var modelos = JSON.parse(xhr.responseText);
                    modelos.forEach(function(modelo) {
                        var option = document.createElement("option");
                        option.value = modelo.id;
                        option.textContent = modelo.nombre;
                        modeloSelect.appendChild(option);
                    });
                }
            };
            
            xhr.open("GET", "../php/get_modelos_por_marca.php?marcaId=" + marcaId, true);
            xhr.send();
        }
    }
