function read_line(rows, cols)

    arr = {}

    for i = 1, rows do
        arr[i] = {}
        counter = 1 
        io.input("text1.txt")
        for j = 1, cols do
            arr[i][j] = (io.read("*n"))
            counter = counter + 1
        end
    end

    io.close()

    for i = 1, #arr do
        for j = 1, #arr[1] do
            io.write(arr[i][j])
            io.write(" ")
        end
        io.write("\n")
    end
end

io.write("Enter the number of rows: ")
rows = io.read("*n")
io.write("Enter the number of columns: ")
columns = io.read("*n")

print(read_line(rows, columns))