
    Ambiguous occurrence `<='
    It could refer to either `Practice.<=', defined at Practice.hs:5:10
                          or `Prelude.<=',
                             imported from `Prelude' at Practice.hs:1:8-15

import Prelude hiding (( <= ))

putStr $  fmap (format fp) $ ls "."

need to specify TMPDIR when installing via stack
> :t fromText
fromText :: Text -> Turtle.FilePath


