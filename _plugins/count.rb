module Wisq
  module SortTagsFilter
    def sort_tags(hash)
      hash.sort_by { |x, y| [0 - y.count, x] }
    end
  end

  module CountFilter
    def count(input)
      input.count
    end
  end
end

Liquid::Template.register_filter(Wisq::SortTagsFilter)
Liquid::Template.register_filter(Wisq::CountFilter)
