json.array! @collection do |object|
  json.small "https:#{object.url(:small)}"
  json.medium "https:#{object.url(:medium)}"
  json.large "https:#{object.url(:large)}"
end
