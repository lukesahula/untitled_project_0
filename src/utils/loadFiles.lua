function loadFiles(folder, file_list)
  local items = love.filesystem.getDirectoryItems(folder)
  for _, item in ipairs(items) do
    local file = folder .. '/' .. item
    local info = love.filesystem.getInfo(file)
    if info.type == 'file' then
      table.insert(file_list, file)
    elseif info.type == 'directory' then
      loadFiles(file, file_list)
    end
  end
end
