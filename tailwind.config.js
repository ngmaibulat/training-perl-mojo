module.exports = {
    mode: 'jit',
    purge: [
      './app/views/**/*.tt',
      './app/public/**/*.css',
      './app/lib/**/*.pm'
    ],
    darkMode: false,
    theme: {
      extend: {},
    },
    variants: {},
    plugins: [],
}
