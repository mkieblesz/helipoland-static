module.exports = {
  plugins: [
    require('tailwindcss'),
    // default environments are development with hugo serve and production with hugo.
    ...process.env.HUGO_ENVIRONMENT === 'production'? [require('cssnano')]: []
  ]
}
