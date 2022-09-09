arr = {}

rows = 3
cols = 3

-- for x in io.lines("text1.txt") do
--   x = x - 8
--   for i = 1, rows do 
--     arr[i] = {}
--     for j = 1, cols do
--       arr[i][j] = x
--       x = x + 1
--     end
--   end
-- end

global i
global j
for x in io.lines("text1.txt") do
    for i = 1, rows do 
      arr[i] = {}
      for j = 1, cols do
        arr[i][j] = x
        i = i + 1
        j = j + 1
      end
    end
  io.close()
end


for x = 1, #arr do
  for y = 1, #arr[1] do
    io.write(arr[x][y])
    io.write(" ")
  end
  io.write("\n")
end

