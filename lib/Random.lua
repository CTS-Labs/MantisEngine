local random = {}

math.randomseed(os.time())

function random.randomElement(tbl)
    if #tbl == 0 then
        error("Table is empty")
    end
    return tbl[math.random(#tbl)]
end

function random.randomElements(tbl, count)
    if #tbl == 0 then
        error("Table is empty")
    end
    if count < 1 or count > #tbl then
        error("Count must be between 1 and the size of the table")
    end
    
    local selected = {}
    local tempTbl = {table.unpack(tbl)}

    for i = 1, count do
        local index = math.random(#tempTbl)
        table.insert(selected, tempTbl[index])
        table.remove(tempTbl, index)
    end

    return selected
end

function random.randomInteger(min, max)
    if min > max then
        error("Min should be less than or equal to Max")
    end
    return math.random(min, max)
end

function random.randomFloat(min, max)
    if min > max then
        error("Min should be less than or equal to Max")
    end
    return min + math.random() * (max - min)
end

function random.shuffle(tbl)
    if #tbl == 0 then
        return tbl
    end
    for i = #tbl, 2, -1 do
        local j = math.random(i)
        tbl[i], tbl[j] = tbl[j], tbl[i]
    end
    return tbl
end

return random
