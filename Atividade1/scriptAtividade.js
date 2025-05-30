document.getElementById("enviar").addEventListener("click", function() {
    this.innerText = "Enviado!";
    this.style.backgroundColor = "#28a745";
    setTimeout(() => {
        this.innerText = "Enviar";
        this.style.backgroundColor = "#007bff";
    }, 2000);
});

document.getElementById("limpar").addEventListener("click", function() {
    document.getElementById("textInput").value = "";
    this.innerText = "Limpo!";
    this.style.backgroundColor = "#28a745";
    setTimeout(() => {
        this.innerText = "Limpar";
        this.style.backgroundColor = "#dc3545";
    }, 2000);
});