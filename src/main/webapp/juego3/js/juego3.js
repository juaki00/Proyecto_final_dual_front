const images = [
    {src: "img/Animal1.jpg", answer: "cat"},
    {src: "img/Animal2.jpg", answer: "dog"},
    {src: "img/Animal3.jpg", answer: "turtle"},
    {src: "img/Animal4.jpg", answer: "pig"},
    {src: "img/Animal5.jpg", answer: "monkey"},
    {src: "img/Animal6.jpg", answer: "bird"},
    {src: "img/Animal7.jpg", answer: "elephant"},
    {src: "img/Animal8.jpg", answer: "tiger"},
    {src: "img/Animal9.jpg", answer: "lion"},
    {src: "img/Animal10.jpg", answer: "bear"}
];

let currentImageIndex = 0;
let currentImage;
let answerForm;
let result;



window.addEventListener("load", () => {
    currentImage = document.getElementById("current-image");
    answerForm = document.getElementById("answer-form");
    result = document.getElementById("result");
    showCurrentImage();
    answerForm.addEventListener("submit", checkAnswer);
});

function showCurrentImage() {
    currentImage.src = images[currentImageIndex].src;
}

function checkAnswer(event) {

    event.preventDefault();
    const answer = document.getElementById("answer-input").value.toLowerCase();
    if (answer === images[currentImageIndex].answer) {

        document.getElementById("puntos").value = parseInt(1)+parseInt(document.getElementById("puntos").value);
        result.textContent = "¡Correcto!";
        result.style.color = "green";
        setTimeout(() => {
            result.textContent = "";
            result.style.color = "";
            currentImageIndex++;
            if (currentImageIndex < images.length) {
                showCurrentImage();
            } else {
                endGame();
            }
        }, 1000);
    } else {
        result.textContent = "Respuesta incorrecta. Intenta de nuevo.";
        result.style.color = "red";
    }
}

function endGame() {
    currentImage.style.display = "none";
    answerForm.style.display = "none";
    result.textContent = "¡Felicitaciones, has completado el juego!";
    result.style.color = "green";
}

window.addEventListener('load', function() {
    var resetButton = document.getElementById('resetButton');
    resetButton.addEventListener('click', resetGame);
  });
  
  function resetGame() {
    currentImage.style.display = "none";
    answerForm.style.display = "none";

    result.textContent = "¡El juego ha terminado!";
    result.style.color = "green";
  }
