import antfu from '@antfu/eslint-config'

export default antfu({
    stylistic: {
        indent: 4,
        quotes: 'single',
    },

    jsonc: false,
    yaml: false,
})
