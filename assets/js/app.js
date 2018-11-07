const optin = document.getElementById('optin')
const additional = document.getElementById('additional')
optin.addEventListener('change', function(e) {
  if (e.target.checked) {
    additional.style.display = 'block'
  } else {
    additional.style.display = 'none'
  }
})
