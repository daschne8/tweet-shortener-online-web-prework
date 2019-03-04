def dictionary
  substitutes = {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    'be' => 'b',
    'you'=> 'u',
    "at" => "@",
    "and" => "&"
  }
  return substitutes
end

def word_substituter(tweet)
  tweet_array = tweet.split
  substitutes = dictionary
  keys = substitutes.keys
  new_array = []
  tweet_array.collect do |word|
    if keys.include?(word)
      word = substitutes[word]
    end
    new_array << word
  end
  return new_array.join(" ")
end

def bulk_tweet_shortener(array)
  array.each { |tweet| puts word_substituter(tweet)  }
end

twit = "I can't wait to be converted"
puts word_substituter(twit)
