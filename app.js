const fs = require('fs');
window.addEventListener('load',()=>{
    console.log('Vinculado con exito');
    //es una ventana emergente donde ingresaremos los datos solicitados
    let sellerId = prompt("Ingrese el seller Id: ");
    let siteId = prompt("Ingrese el site Id: ");
    //aqui llamamos a la ul para listar los items que encuentre segun lo ingresado
    let lista = document.getElementById('lista'); 

    //declaramos variables dinamicas
    let url = `https://api.mercadolibre.com/sites/${siteId}/search?seller_id=${sellerId}`


    //buscador asincronico 
    const search = async() => {
        try {
            //trae de la api la informacion
            let response = await fetch(url)
            //muestra la informacion en formato JSON
            let result = await response.json()
            console.log(result);
            //iteramos los arrays correspondientes
            for (let i = 0; i < result.results.length; i++) {
                            
                            //indicamos como queremos mostrar la informacion solicitada e indicamos la informacion especifica

                            let item = `<h3> ID del producto: ${result.results[i].id}</h3> 
                            <h1>${result.results[i].title}</h1> 
                            <h2>El item se encuentra publicado en: ${result.results[i].domain_id}</h2> 
                            <h2>con ID: ${result.results[i].category_id}</h2>
                             <br><br>`

                            lista.innerHTML += item
                            
                        }
        } catch (error) {
            //si hay un error que se muestre por consola
           console.log(error);
        }
    }
     //ejecucion del buscador
    search();
    
})