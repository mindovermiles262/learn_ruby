class Book

  attr_reader :title;

  def title=(st)
    @title = format_title(st)
  end

  private

  def format_title (st)
    nono = ["the", "a", "an", "and", "in", "of"]
    words = st.split
    words.map do |x|
      x.capitalize! unless nono.include?(x);
    end
    words[0].capitalize!
    words.join(" ");
  end
end
