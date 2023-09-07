// Get the score type from URL parameters
const urlParams = new URLSearchParams(window.location.search);
const scoreType = urlParams.get('type');
const totalScore = parseInt(urlParams.get('score')); // Get the total score from URL parameters

// Find the elements to display the result and total score
const resultElement = document.getElementById('result');
const scoreElement = document.getElementById('score');

// Display the appropriate message based on the score type for Investment Type
if (scoreType === 'stable') {
    resultElement.textContent = '안정형';
} else if (scoreType === 'adventurous') {
    resultElement.textContent = '위험형';
} else {
    resultElement.textContent = '';
}

// Display the total score for Investment Score
scoreElement.textContent = `${totalScore} 점`;
