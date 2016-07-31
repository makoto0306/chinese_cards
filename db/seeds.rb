# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cards = []
cards << %w(饭馆(儿) 飲食店、レストラン fànguǎn(r))
cards << %w(你好 こんにちは nǐhǎo)
cards << %w(见 見る jiàn)
cards << %w(看 見る（见ではない） kàn)
cards << %w(听 聞く tīng)
cards << %w(懂 分かる dǒng)
cards << %w(成绩 成績 chéngjì)
cards << %w(出租(汽)车 タクシー chūzū(qì)chē)
cards << %w(厨师 コック chúshī)
cards << %w(大街 大通り dàjiē)
cards << %w(大米 米 dàmǐ)
cards << %w(大人 おとな dàren)
cards << %w(大衣 オーバー dàyī)
cards << %w(蛋 卵 dàn)
cards << %w(蛋糕 ケーキ dàngāo)
cards << %w(刀子 ナイフ dāozi)
cards << %w(地铁 地下鉄 dìtiě)
cards << %w(电车 電車、トロリーバス diànchē)
cards << %w(电子邮件 電子メール diànzǐyóujiàn)
cards << %w(动物园 動物園 dòngwùyuán)
cards << %w(肚子 おなか dùzi)
cards << %w(对面 向かい風 duìmiàn)
cards << %w(对象 結婚相手、恋人 duìxiàng)
cards << %w(儿童 児童、子ども értóng)
cards << %w(儿子 息子 érzi)
cards << %w(耳朵 耳 ěrduo)
cards << %w(发音 発音 fānyì)
cards << %w(法律 法律 fǎlǜ)
cards << %w(翻译 翻訳、通訳／(動)翻訳する、通訳する fānyì)
cards << %w(饭馆(儿) 飲食店、レストラン fànguǎn(r))

cards.each do |card|
  Card.create(chinese: card[0], japanese: card[1], pinyin: card[2])
end
