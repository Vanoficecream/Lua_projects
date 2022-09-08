
function matrices_multiplication(rows_num1, cols_num1, rows_num2, cols_num2)

     arr1 = {}
     -- Create local counter for more freindly user input.
     local counter1 = 1
     -- Adding to the 1st matrix all values from user.
     for i = 1, rows_num1 do
          arr1[i] = {}
          for j = 1, cols_num1 do
               io.write("Enter the ".. counter1 .. " value of First matrix: ")
               arr1[i][j] = io.read("*n")
               counter1 = counter1 + 1
          end
     end

     arr2 = {}
     -- Create local counter for more freindly user input.
     local counter2 = 1
     -- Adding to the 2nd matrix all values from user.
     for i = 1, rows_num2 do
          arr2[i] = {}
          for j = 1, cols_num2 do
               io.write("\n")
               io.write("Enter the ".. counter2 .. " value of Second matrix: ")
               arr2[i][j] = io.read("*n")
               counter2 = counter2 + 1
          end
     end
     -- Create new matrix that will be serve as result of multiplication.
     result = {}
     -- Multiplying matricies.
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


io.write("Number of rows matrix 1: ")
rows_num1 = io.read("*n")
io.write("Number of column matrix 1: ")
cols_num1 = io.read("*n")
io.write("\n")
io.write("Number of rows matrix 2: ")
rows_num2 = io.read("*n")
io.write("Number of column matrix 2: ")
cols_num2 = io.read("*n")

print(matrices_multiplication(rows_num1, cols_num1, rows_num2, cols_num2))

