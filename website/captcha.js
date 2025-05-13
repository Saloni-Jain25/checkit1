// Generates a random 5-character CAPTCHA
function generateCaptchaText() {
  const chars = 'ABCDEFGHJKLMNPQRSTUVWXYZ23456789';
  let result = '';
  for (let i = 0; i < 5; i++) {
    result += chars.charAt(Math.floor(Math.random() * chars.length));
  }
  return result;
}

// Injects the CAPTCHA when the page loads
function renderCaptcha(id) {
  const el = document.getElementById(id);
  if (el) el.textContent = generateCaptchaText();
}

// Validates CAPTCHA input
function validateCaptcha(displayId, inputId) {
  const correctCaptcha = document.getElementById(displayId).textContent.trim().toUpperCase();
  const userInput = document.getElementById(inputId).value.trim().toUpperCase();
  if (userInput !== correctCaptcha) {
    alert("CAPTCHA does not match. Please try again.");
    renderCaptcha(displayId); // Refresh CAPTCHA
    return false;
  }
  return true;
}

// On page load, initialize CAPTCHA
window.addEventListener("DOMContentLoaded", () => {
  renderCaptcha("loginCaptchaText");
  renderCaptcha("signupCaptchaText");
});
