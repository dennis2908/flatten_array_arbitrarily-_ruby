def flattify(array)
  array.each_with_object([]) do |element, flattened|
    flattened.push *(element.is_a?(Array) ? flattify(element) : element)
  end
end