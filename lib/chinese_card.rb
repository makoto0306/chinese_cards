# require 'rubygems'
# require 'active_record'
#
# ActiveRecord::Base.establish_connection(
#   adapter:  "mysql2",
#   host:     "localhost",
#   username: "root",
#   password: "",
#   database: "chinese_cards",
# )
#
#
# class Card < ActiveRecord::Base
# end

def rest(correct_num)
  Card.where(correct_count: correct_num).count
end

cards = Card.order("correct_count").limit(20)
# TODO 正解数が一番少ないものの中から20問取得する
# TODO 正解したら末尾に一問追加（リングキュー？)
#   正解したらデキュー
#   不正解になったらエンキュー
# TODO 不正解だったらその問題を末尾に追加

min_correct_num = Card.minimum(:correct_count)
is_complete = false
rest = 0

puts "表示される日本語に対応する中国語を選んでください。"
cards.each_with_index do |card, i|
  if rest(min_correct_num) == 0
    is_complete = true
    break
  else
    puts "残り#{rest}問"
  end
  puts "#{i}. 「#{card.japanese}」(Enter: 正解表示, q: 終了)"
  is_quit = STDIN.gets
  break if is_quit.strip== "q"

  puts "答え: #{card.chinese}(#{card.pinyin})"
  puts "(正解:y, 不正解:n)"
  while str = STDIN.gets
    case str.chomp
    when "y"
      card.increment!(:correct_count)
      break
    when "n"
      card.increment!(:incorrect_count)
      break
    end
  end

end

if is_complete
  puts "お疲れ様です！全ての問題に正解しましたが、また最初から挑戦することもできます。"
else
  puts "お疲れ様です！残り#{rest(min_correct_num)}問です。" 
end
