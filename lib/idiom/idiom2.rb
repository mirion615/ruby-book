limit = nil
p limit ||= 10

limit = 20
p limit ||= 10
#↑変数limitがnilまたはfalseであれば、10を代入する。この意味は↓
limit = limit || 10
# limitが真(true)ならばlimitが代入され、偽(false)ならば右辺(10)が代入される。
