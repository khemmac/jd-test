const { findMinMaxMean } = require('./index')

describe('findMinMaxMean', () => {

    test('Should return corrent output when receive array set 01', () => {
        const input = [9, 2, -3, 0, 5, 11, 19, 2, 1]
        const result = findMinMaxMean(input)

        expect(result).toMatchObject({
            min: -3,
            max: 19,
            mean: 5.111111111111111
        })
    })

})