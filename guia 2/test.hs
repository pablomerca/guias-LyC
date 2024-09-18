data Trie a = TrieNodo (Maybe a) [(Char, Trie a)] deriving Eq

foldTrie :: (Maybe a -> [(Char, b)] -> b) -> Trie a -> b
foldTrie f (TrieNodo x y) = f x (map (\(c, t) -> (c, foldTrie f t)) y)

caminos :: Trie a -> [String]
caminos = foldTrie (\_ recHijos -> agregarChar recHijos)

agregarChar :: [(Char, [String])] -> [String]
agregarChar = foldr (\x rec -> [fst x] : ((map (fst x :) $ snd x) ++ rec)) [""]

t = (TrieNodo Nothing [ ('a', TrieNodo (Just True) []), ('b', TrieNodo Nothing [('a', TrieNodo (Just True) [('d', TrieNodo Nothing [])])]), ('c', TrieNodo (Just True) [])])

xs = [('a', ["111", "111"]), ('b', ["22222", "22"]), ('c', ["3333333", "333"]), ('d', []), ('e', [])]

