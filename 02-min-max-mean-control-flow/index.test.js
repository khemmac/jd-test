const { findMin, findMax, findMean } = require('./index')

const testSet01 = [9, 2, -3, 0, 5, 11, 19, 2, 1]

describe('findMinMaxMean with Control Flow', () => {

    describe('findMin', () => {
        test('Should return correct output when receive array set 01', () => {
            const result = findMin(testSet01)

            expect(result).toBe(-3)
        })
    })

    describe('findMax', () => {
        test('Should return correct output when receive array set 01', () => {
            const result = findMax(testSet01)

            expect(result).toBe(19)
        })
    })

    describe('findMean', () => {
        test('Should return correct output when receive array set 01', () => {
            const result = findMean(testSet01)

            expect(result).toBe(5.111111111111111)
        })
    })

})