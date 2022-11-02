

function mudaCategoria(){
    let categoria =  document.getElementById("categoria").value;
    if(categoria == 2){
        $("#textSearch").remove();
        $("#selectgroup").append("<select  id='selectCategorys' class='form-control categoria mb-2'></select>");

        axios.get('https://api.chucknorris.io/jokes/categories').then(function (response) {
            let options = response.data;
           $("#selectCategorys").empty();

           for(let i in options){
            $("#selectCategorys").append("<option value='" + i + "'>" + options[i].toUpperCase()+"</option>");
         }
        })
    }
    else if(categoria == 3){
        $("#selectCategorys").remove();
        $("#selectgroup").append("<textarea class='form-control mb-2' id='textSearch'></textarea>");
    } 
    else{
        $("#selectCategorys").remove();
        $("#textSearch").remove();
    }
}

function enviaRequisicao(){
    let categoria =  document.getElementById("categoria").value;
    let url = "https://api.chucknorris.io/jokes";
    
    
    if(categoria == 1){
        axios.get(url+"/random")
        .then(function(response){
            alert(response.data["value"]);
        })
        .catch(function (error){
            console.error(error);
        })
    }
    else if (categoria == 2){

        let selectedCategory = $( "#selectCategorys option:selected" ).text().toLowerCase();
        axios.get(url+"/random", {
            params: {
                category: selectedCategory
            }
        })
          .then(function (response) {
            alert(response.data["value"]);
          })
          .catch(function (error) {
            console.error(error);
          })    
    }
    else if(categoria == 3){

        let textSearch = $("#textSearch").val().toLowerCase();

        axios.get(url+"/search", {
            params: {
                query: textSearch
            }
        })
          .then(function (response) {
            var arr = response.data["result"];
            var randomNum = Math.floor(Math.random() * arr.length);
            alert(response.data["result"][randomNum]["value"]);
          })
          .catch(function (error) {
            console.error(error);
          }) 

    }
    else{

    }
    
}