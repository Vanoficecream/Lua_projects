function matrix_mulp(m1, m2)

    local result = {}

    for i = 1, #m1 do
        result[i] = {}
        for j = 1, #m2[1] do
            result[i][j] = 0
            for k = 1, #m2 do
                result[i][j] = result[i][j] + m1[i][k] * m2[k][j]
            end
        end
    end
    return result
end


mat1 = { { 2, 2 }, { 3, 4 }, {2, 3} }
mat2 = { { 5, 6 }, { 7, 8 } }

res = matrix_mulp(mat1, mat2)

for i = 1, #res do
    for j = 1, #res[1] do
        io.write(res[i][j])
        io.write(" ")
    end
    io.write("\n")
end

