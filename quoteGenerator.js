const canvas = document.getElementById('quoteCanvas');
const ctx = canvas.getContext('2d');

// Next : Upload interesting fonts, and add an option to select a font.

// Function to fetch quote and author
async function fetchQuote(category) {
    try {
        const response = await fetch(`quotes.php?category=${category}`);
        if (!response.ok) throw new Error('Failed to fetch quote');
        const text = await response.text();
        const [quote, author] = text.split('\n');
        return { quote, author: author || 'Unknown' };
    } catch (error) {
        console.error('Error fetching quote:', error);
        return { quote: 'Failed to load quote', author: '' };
    }
}

// Function to draw the canvas
function drawCanvas(settings) {
    ctx.clearRect(0, 0, canvas.width, canvas.height);

    // Create background gradient
    const gradient = ctx.createLinearGradient(0, 0, 0, canvas.height);
    gradient.addColorStop(0, settings.bgColor1);
    gradient.addColorStop(1, settings.bgColor2);
    ctx.fillStyle = gradient;
    ctx.fillRect(0, 0, canvas.width, canvas.height);

    // Draw quote
    ctx.font = `${settings.quoteFontSize}px Arial`;
    ctx.fillStyle = settings.quoteFontColor;
    ctx.shadowColor = settings.quoteShadowColor;
    ctx.shadowBlur = settings.quoteShadowSize;
    ctx.textAlign = 'center';
    ctx.textBaseline = 'middle';

    const quoteLines = wrapText(settings.quote, ctx, canvas.width - 40);
    const startY = (canvas.height - quoteLines.length * settings.quoteFontSize * 1.2) / 2;

    quoteLines.forEach((line, index) => {
        ctx.fillText(line, canvas.width / 2, startY + index * settings.quoteFontSize * 1.2);
    });

    // Draw author
    ctx.font = `${settings.authorFontSize}px Arial`;
    ctx.fillStyle = settings.authorFontColor;
    ctx.shadowColor = settings.authorShadowColor;
    ctx.shadowBlur = settings.authorShadowSize;
    ctx.fillText(settings.author, canvas.width / 2, canvas.height - settings.authorBottomMargin);
}

// Function to wrap text into lines for the canvas
function wrapText(text, context, maxWidth) {
    const words = text.split(' ');
    let lines = [];
    let currentLine = '';

    words.forEach(word => {
        const testLine = currentLine + word + ' ';
        const metrics = context.measureText(testLine);
        const testWidth = metrics.width;

        if (testWidth > maxWidth && currentLine) {
            lines.push(currentLine.trim());
            currentLine = word + ' ';
        } else {
            currentLine = testLine;
        }
    });
    lines.push(currentLine.trim());
    return lines;
}

// Function to update the canvas with current input settings
function updateCanvas() {
    const settings = {
        quote: document.getElementById('quote').value,
        author: document.getElementById('author').value,
        quoteFontSize: parseInt(document.getElementById('quoteFontSize').value),
        quoteFontColor: document.getElementById('quoteFontColor').value,
        quoteShadowColor: document.getElementById('quoteShadowColor').value,
        quoteShadowSize: parseInt(document.getElementById('quoteShadowSize').value),
        authorFontSize: parseInt(document.getElementById('authorFontSize').value),
        authorFontColor: document.getElementById('authorFontColor').value,
        authorShadowColor: document.getElementById('authorShadowColor').value,
        authorShadowSize: parseInt(document.getElementById('authorShadowSize').value),
        authorBottomMargin: parseInt(document.getElementById('authorBottomMargin').value),
        bgColor1: document.getElementById('bgColor1').value,
        bgColor2: document.getElementById('bgColor2').value,
    };

    drawCanvas(settings);
}

// Resize canvas when the button is clicked
document.getElementById('resizeCanvas').addEventListener('click', () => {
    const width = parseInt(document.getElementById('canvasWidth').value);
    const height = parseInt(document.getElementById('canvasHeight').value);
    canvas.width = width;
    canvas.height = height;
    updateCanvas();
});

// Fetch and populate quote when the button is clicked
document.getElementById('addQuotes').addEventListener('click', async () => {
    const category = document.getElementById('category').value;
    const { quote, author } = await fetchQuote(category);
    document.getElementById('quote').value = quote;
    document.getElementById('author').value = author;
    updateCanvas();
});

// Real-time updates on input changes
['input', 'change'].forEach(event => {
    document.querySelectorAll('input, textarea, select').forEach(input => {
        input.addEventListener(event, updateCanvas);
    });
});

// Generate PNG and trigger download
document.getElementById('generatePng').addEventListener('click', () => {
    const link = document.createElement('a');
    link.download = 'quote.png';
    link.href = canvas.toDataURL('image/png');
    link.click();
});
