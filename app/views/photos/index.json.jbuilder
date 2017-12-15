json.array! @collection do |object|
  json.small object.url(:small)
  json.medium object.url(:medium)
  json.large object.url(:large)
end
