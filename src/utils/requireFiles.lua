function requireFiles(files)
  for _, file in ipairs(files) do
    local file = file:sub(1, -5) -- crops the '.lua' part of the filename
    require(file)
  end
end
