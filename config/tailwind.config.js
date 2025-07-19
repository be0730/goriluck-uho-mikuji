const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
  ],
  safelist: [
    'text-responsive',
    'responsive-text',
    'text-[clamp(1rem,4vw,2rem)]'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      keyframes: {
        'vertical-open': {
          '0%':   { transform: 'scaleY(0)', 'border-radius': '3rem' },
          '70%':  { 'border-radius': '1.5rem' },
          '100%': { transform: 'scaleY(1)', 'border-radius': '1rem' },
        },
      },
      animation: {
        'vertical-open':
          'vertical-open 1s cubic-bezier(0.68,-0.55,0.27,1.55) both',
      },
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
  ],
};
