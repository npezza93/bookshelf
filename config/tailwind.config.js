const colors = require('tailwindcss/colors')
const plugin = require('tailwindcss/plugin')
const defaultTheme = require('tailwindcss/defaultTheme')
const myColors = {
  transparent: 'transparent',
  'white': "#ffffff",
  'black': '#000000',
  'blueGray': colors.slate,
  'trueGray': colors.neutral,
  'red': colors.red,
  // 'lightBlue': colors.lightBlue,
  'blue': colors.blue,
  'dtheme': {
    'gold': 'rgb(226, 207, 168)',
    'pink': 'rgb(231, 172, 152)',
    'white': 'rgb(238, 234, 222)',
    'gray': 'rgb(210, 211, 213)',
    'blue': 'rgb(82, 93, 111)',
    'green': '#BBF7D0'
  },
  'pale': {
    1: 'rgb(203, 228, 249)',
    2: 'rgb(205, 245, 246)',
    3: 'rgb(239, 249, 218)',
    4: 'rgb(249, 235, 223)',
    5: 'rgb(249, 216, 214)',
    6: 'rgb(214, 205, 234)',
    7: '#d4e6d9',
    8: '#e5d5ba'
  }
}

module.exports = {
  mode: 'jit',
  content: [
    './app/views/**/*.html.erb',
    './app/javascript/**/*.js'
  ],
  theme: {
    fill: myColors,
    colors: myColors,
    screens: {
      'xs': '350px',
      'sm': '640px',
      'md': '768px',
      'lg': '1024px',
      'xl': '1280px',
      '2xl': '1536px',
    },
    extend: {
      borderRadius: {
        '4xl': '2.25rem'
      },
      cursor: {
        'grab': 'grab',
        'grabbing': 'grabbing'
      },
      fontFamily: {
        sans: defaultTheme.fontFamily.sans,
      },
      transitionProperty: {
       'bottom': 'bottom',
       'width': 'width',
      },
      zIndex: {
        '-1': '-1',
        '1': '1',
        '2': '2',
      },
      minWidth: {
        '24': '6rem'
      },
      maxHeight: {
        '60': '60vh'
      },
      margin: {
        '20%': '20%',
        '25%': '25%',
      }
    }
  },
  plugins: [
    plugin(function({ addVariant, e }) {
      addVariant('valid', ({ modifySelectors, separator }) => {
        modifySelectors(({ className }) => {
          return `.${e(`valid${separator}${className}`)}:valid`
        })
      })
    }),
    plugin(function({ addVariant, e }) {
      addVariant('invalid', ({ modifySelectors, separator }) => {
        modifySelectors(({ className }) => {
          return `.${e(`invalid${separator}${className}`)}:invalid`
        })
      })
    }),
    require('@tailwindcss/forms')
  ]
}
