const { factorial } = require('./index')

describe('factorial', () => {

    test('Should return correct output when receive 5', () => {
        const result = factorial(5)

        expect(result).toBe(120)
    })

})