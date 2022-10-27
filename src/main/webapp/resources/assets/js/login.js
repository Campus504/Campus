let login = document.getElementById('login')

toggle = () => {
  login.classList.toggle('sign-in')
  login.classList.toggle('sign-up')
}

setTimeout(() => {
  login.classList.add('sign-in')
}, 200)