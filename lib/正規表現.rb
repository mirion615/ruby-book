# 正規表現とは、パターンを指定して、文字列を効率よく検索/置換するためのミニ言語

# 数字の固定、ハイフン
\d\d-\d\d\d\d-\d\d\d\d
# 半角数字2個、ハイフン、半角数字4個、ハイフン、半角数字4個
\d{2,5}-\d{1,4}-\d{4}
# 半角数字が2個～5個、ハイフンまたはカッコ（開き）、半角数字が1個～4個、ハイフンまたはカッコ（閉じ）、半角数字が4個
\d{2,5}[-(]\d{1,4}[-)]\d{4}
# 1文字目はゼロ、2文字目はゼロ以外の半角数字
0[1-9]\d{0,3}[-(]\d{1,4}[-)]\d{4}