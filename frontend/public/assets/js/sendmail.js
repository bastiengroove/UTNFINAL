 function SendInfo() {

      var name = document.getElementById("name").value;
      var email = document.getElementById("email").value;
      var message = document.getElementById("message").value;

      if (name != "" & email != "" & message != "") {
        document.getElementById('load').style.display = 'block';
        fetch("const response = await axios.get(`${process.env.REACT_APP_API_URL}/api/contacto`);", {
        method: "POST",
        headers: { 
            'Content-Type': 'application/json',
            'Accept': 'application/json'
        },
        body: JSON.stringify({
            Nombre: name,
            Email: email,
            Mensaje: message
        })
    })
        .then(response => response.json())
        .then(data => {
                if (data.success=='true'){
                    document.getElementById('load').style.display = 'none';
                    document.getElementById('success').style.display = 'block';
                    //console.log(data)
                }else if (data.success=='false'){
                    document.getElementById('load').style.display = 'none';
                    document.getElementById('error').style.display = 'block';
                    //console.log(data)
                }
            })
        .catch(error => console.log(error));
      } else {
        alert("Debes llenar todos los campos!");
      }
    }