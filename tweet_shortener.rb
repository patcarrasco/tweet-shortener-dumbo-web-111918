# Write your code here.
require 'pry'

def dictionary()
  dict = {
          "hello" => "hi",
          # "##to, two, too" => '2', commenting this out because when i use .include below to solve word_sub(), the second challenge for somereason changes an 'a' to @
          #"for, four" => '4',
          'to' => '2',
          'two' => '2',
          'too' => '2',
          'for' => '4',
          'four' => '4',
          "be" => 'b',
          "you" => "u",
          "at" => "@",
          "and" => "&"
          }
  dict
end

def word_substituter(string)
  temp = string.split
  temp.map do |word|
    dictionary.map do |long_word, short_word|
      if long_word == word || long_word.capitalize == word # originally, i had .include?() as my solution, however this resulted in "a" becoming "@" for some reason?
        word.replace(short_word) # use .replace here to CHANGE the value of tweet above scope?
      end
    end
  end
  temp.join(' ')
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)[1..137] + "..."
  else
    tweet
  end
end
