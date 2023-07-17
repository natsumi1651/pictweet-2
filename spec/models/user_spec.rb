it 'nicknameが空では登録できない' do
  user = FactoryBot.build(:user FactoryBotのメソッド名が入る)  # Userのインスタンス生成
  user.nickname = ''  # nicknameの値を空にする

  user.valid?
  expect(user.errors.full_messages).to include("Nickname can't be blank")
