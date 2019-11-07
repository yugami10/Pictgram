class User < ApplicationRecord
  validates :name, presence: true ,length:{in: 1..15}
  validates :email, presence: true ,format:{with:/[^\s]@[^\s]/}
  # format:{with:ここはインターネットからコピペ}
  # passwordのwith以降の内容<https://qiita.com/mpyw/items/886218e7b418dfed254b>
  # format:{with:ここはインターネットからコピペ
  # emailのwith以降の内容<https://qiita.com/matsubo/items/3dfb1ddb6e155c44643b>
  
  validates :password, length: { in: 8..32}, format:{with:/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}+\z/i}
  
  has_secure_password
end