const fileInput = document.getElementById('fileInput');
const drawButton = document.getElementById('drawButton');
const textButton = document.getElementById('textButton');
const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');
const startXInput = document.getElementById('startX');
const startYInput = document.getElementById('startY');
const textInput = document.getElementById('textInput');
const textStartXInput = document.getElementById('textStartX');
const textStartYInput = document.getElementById('textStartY');

let points = [];

fileInput.addEventListener('change', (event) => {
    const file = event.target.files[0];
    const reader = new FileReader();

    reader.onload = function(e) {
        const lines = e.target.result.split('\n');
        points = lines.map(line => {
            const coords = line.split(';').map(Number);
            return { x: coords[0], y: coords[1] };
        });
    };

    reader.readAsText(file);
});

drawButton.addEventListener('click', () => {
    const startX = parseInt(startXInput.value);
    const startY = parseInt(startYInput.value);
    context.clearRect(0, 0, canvas.width, canvas.height);
    context.beginPath();
    context.moveTo(startX, startY); 
    points.forEach((point, index) => {
        if (index === 0) {
            context.lineTo(point.x, point.y);
        } else {
            context.lineTo(point.x, point.y);
        }
    });

    context.stroke();
});

textButton.addEventListener('click', () => {
    const text = textInput.value;
    const textStartX = parseInt(textStartXInput.value);
    const textStartY = parseInt(textStartYInput.value);
    context.font = '24px Arial';
    context.fillText(text, textStartX, textStartY);
});
