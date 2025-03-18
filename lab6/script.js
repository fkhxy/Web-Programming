const bgColorInput = document.getElementById("bgColorInput");
const changeBgColorButton = document.getElementById("changeBgColor");

changeBgColorButton.addEventListener("click", function () {
    const newBgColor = bgColorInput.value.trim();

    if (newBgColor) {
        document.body.style.backgroundColor = newBgColor;
    }
});
