
function matrices_multiplication(rows_num1, cols_num1, rows_num2, cols_num2)

     if cols_num1 ~= rows_num2 then
          return "Number of columns in 1st matrix must be equal to the number of rows in the 2nd matrix! Yours are: ".. rows_num1 .. " and " .. rows_num2
     else
          arr1 = {}
          arr2 = {}

          local counter1 = 1 -- Create local counter for more user friendly input.

          -- Adding to the 1st matrix all values from user.

          for i = 1, rows_num1 do
               arr1[i] = {}
               for j = 1, cols_num1 do
                    io.write("Enter the ".. counter1 .. " value of First matrix: ")
                    arr1[i][j] = io.read("*n")
                    counter1 = counter1 + 1
               end
          end

          io.write("\n")
          local counter2 = 1 -- Create local counter for more user freindly input.

          -- Adding to the 2nd matrix all values from user.

          for i = 1, rows_num2 do
               arr2[i] = {}
               for j = 1, cols_num2 do
                    io.write("Enter the ".. counter2 .. " value of Second matrix: ")
                    arr2[i][j] = io.read("*n")
                    counter2 = counter2 + 1
               end
          end

          io.write("\n")
          result = {} -- Create new table that will be serve as container for the result of our multiplication.

          -- Multiplying matricies - arr1 * arr2.

          for i = 1, #arr1 do
          result[i] = {}
               for j = 1, #arr2[1] do
                    result[i][j] = 0
                    for k = 1, #arr2 do
                         result[i][j] = result[i][j] + arr1[i][k] * arr2[k][j]
                    end
               end
          end

          -- Printing the result of multiplication.

          for x = 1, #result do
               for y = 1, #result[1] do
                    io.write(result[x][y])
                    io.write(" ")
               end
               io.write("\n")
          end
     end     
end


io.write("\n")
io.write("Number of rows matrix 1: ")
rows_num1 = io.read("*n")
io.write("Number of column matrix 1: ")
cols_num1 = io.read("*n")
io.write("\n")
io.write("Number of rows matrix 2: ")
rows_num2 = io.read("*n")
io.write("Number of column matrix 2: ")
cols_num2 = io.read("*n")
io.write("\n")

print(matrices_multiplication(rows_num1, cols_num1, rows_num2, cols_num2))
