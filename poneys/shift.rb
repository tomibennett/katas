$text = "ny xjjrx ymfy tzw nshwjingqj jshwduynts fqltwnymr
mfx gjjs htruwtrnxji. kwtr stb, bj bnqq zxj fs jshwduynts pjd.
yt ijhdumjw tzw htrrzsnhfyntsx
1 - hqjfs ymj pjd gd wjrtansl jajwd wjizsifsy qjyyjw.
2 - rfu ymj pjd yt ymj knwxy qjyyjw tk ymj fqumfgjy.
3 - htruqjyj ymj yfgqj bnym ymj wjxy tk ymj fqumfgjy xyfwynsl kwtr ymj qfxy qjyyjw tk ymj pjd.


jcfruqj bnym rdxjhwjy fx ymj pjd


fghijklmnopqrstuvwxyzabcde
rdxjhwyzabcefgiklmnopqstuv
hzwwjsyqd, bj fwj zxnsl kjfwutsnjx fx pjd
zxj ny yt ijhwduy edcxuikhuidfmlu. ymnx nx ymj ufxxbtwi yt fhhjxx tzw gfyyqj uqfs bnym ymj ktqqtbnsl ktwr."

def shift value
  $text.split('').map do |char|
    if char.match /[a-z]/
      ascii = char.ord

      ascii -= 97
      shifted_ascii = (ascii + value) % 26

      (shifted_ascii + 97).chr
    else
      char
    end
  end.join()
end

puts shift(-5)
