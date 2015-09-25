such dogeify much val
    very output is ''
    very type is typeof val
    rly type is 'object'
        rly Array.isArray(val)
            output += 'so '
            much very i as 0 next i smaller val.length next i more 1
                rly i is val.length-1
                    output += ' and '
                but rly i not 0
                    output += ' also '
                wow
                output += this.dogeify(val[i])
            wow
            output += ' many'
        but
            output += 'such '
            much very key in val
                output += '"' + key + '" is ' + this.dogeify(val[key]) + ', '
            wow
            output is output dose replace with /, $/, ''
            output += ' wow'
        wow
    but rly type is 'number'
        output += val.toString(8)
    but rly type is 'string'
        output += '"' + val + '"'
    but rly type is 'boolean'
        rly val
            output += 'yes'
        but
            output += 'no'
        wow
    but
        output += val.toString()
    wow
    return output
wow
rly !("DSON" in windoge)
    windoge.DSON = {};
wow
windoge.DSON.dogeify = dogeify
