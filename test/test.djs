so assert
so ../DSON as DSON
plz describe with 'DSON', much
    plz describe with 'dogeify', much
        plz it with 'Number' much
            assert.equal('41', DSON.dogeify(33))
            assert.equal('1', DSON.dogeify(1))
        wow&
        plz it with 'String' much
            assert.equal('"pop"', DSON.dogeify('pop'))
            assert.equal('"a test"', DSON.dogeify('a test'))
        wow&
        plz it with 'Object' much
            assert.equal('such "foo" is "bar", "pop" is "corn", "cat" is "not a doge" wow', DSON.dogeify({'foo': 'bar', 'pop': 'corn', 'cat': 'not a doge'}))
            assert.equal('such "num" is 1, "str" is "hi", "bool" is yes wow', DSON.dogeify({'num': 1, 'str': 'hi', 'bool': true}))
        wow&
        plz it with 'Array' much
            assert.equal('so 0 also 1 and 2 many', DSON.dogeify([0,1,2]))
            assert.equal('so "hi" and "there" many', DSON.dogeify(['hi', 'there']))
        wow&
        plz it with 'Boolean' much
            assert.equal('yes', DSON.dogeify(true))
            assert.equal('no', DSON.dogeify(false))
        wow&
        plz it with 'Nested object' much
            assert.equal('such "obj" is such "foo" is "bar", "cat" is "not a doge" wow wow', DSON.dogeify({obj: {'foo': 'bar', 'cat': 'not a doge'}}))
        wow&
        plz it with 'Nested array' much
            assert.equal('so so "THIS" also "IS" and "DOGESCRIPT" many and so 0 also 1 and 2 many many', DSON.dogeify([['THIS', 'IS', 'DOGESCRIPT'], [0,1,2]]))
        wow&
    wow&
    plz describe with 'parse', much
        plz it with 'Number' much
            assert.equal(DSON.parse('41'), 33)
            assert.equal(DSON.parse('1'), 1)
        wow&
        plz it with 'String' much
            assert.equal(DSON.parse('"pop"'), 'pop')
            assert.equal(DSON.parse('"a test"'), 'a test')
        wow&
        plz it with 'Object' much
            assert.deepEqual(DSON.parse('such "foo" is "bar", "pop" is "corn", "cat" is "not a doge" wow'), {'foo': 'bar', 'pop': 'corn', 'cat': 'not a doge'})
            assert.deepEqual(DSON.parse('such "num" is 1, "str" is "hi", "bool" is yes wow'), {'num': 1, 'str': 'hi', 'bool': true})
        wow&
        plz it with 'Array' much
            assert.deepEqual(DSON.parse('so 0 also 1 and 2 many'), [0,1,2])
            assert.deepEqual(DSON.parse('so "hi" and "there" many'), ['hi', 'there'])
        wow&
        plz it with 'Boolean' much
            assert.equal(DSON.parse('yes'), true)
            assert.equal(DSON.parse('no'), false)
        wow&
        plz it with 'Nested object' much
            assert.deepEqual(DSON.parse('such "obj" is such "foo" is "bar", "cat" is "not a doge" wow wow'), {obj: {'foo': 'bar', 'cat': 'not a doge'}})
        wow&
        plz it with 'Nested array' much
            assert.deepEqual(DSON.parse('so so "THIS" also "IS" and "DOGESCRIPT" many and so 0 also 1 and 2 many many'), [['THIS', 'IS', 'DOGESCRIPT'], [0,1,2]])
        wow&
    wow&
wow&
