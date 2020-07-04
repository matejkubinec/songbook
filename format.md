# ChordPro Referenčný Formát

[Zdroj](https://tenbyten.com/software/songsgen/help/HtmlHelp/files_reference.htm)

## Direktívy

Direktívy sú oddelené pomocou zložených zátvoriek ('{' and '}').

- **{artist: _reťazec_} ({a: _reťazec_})** - Meno interpreta.
- **{title: _reťazec_} ({t: _reťazec_})** - Názov piesne.
- **{start_of_verse} ({sov})** - Začiatok slohy.
- **{end_of_verse} ({eov})** - Koniec slohy.
- **{start_of_chorus} ({soc})** - Začiatok refrénu.
- **{end_of_chorus} ({eoc})** - Koniec refrénu.
- **{comment: _reťazec_} ({c: _reťazec_})** - Komentár.
- **{start_of_tab} ({sot})** - Začiatok tabulatúry, text bude formátovaný
  pomocou font s pevnou šírkou písmen, až po direktívu konca tabulatúry.
- **{end_of_tab} ({eot})** - Koniec sekcie tabulatúr.
- **{guitar_comment: _reťazec_} ({gc: _reťazec_})** - Komentár, tlačený len keď
  sa tlačia akordy.
- **{key: _reťazec_}** - kľúč
- **{capo: _číslo_}** - kapodaster
- **{tempo: _číslo_}**
- **{start_of_grid: _reťazec_}**
- **{end_of_grid}**

## Akordy

Akordy sú oddelené pomocou hranatých zátvoriek ('[' and ']'). Posuvky sú
indikované '#' pre krížiky (poltón vyššie) a 'b' pre béčko (poltón nižšie).

### Podporovaný formát

```
[A-G]{#|b}{m|dim|maj|sus}{číslo}{/[A-G]{#|b}}
```

napr. `[A][c#m7] [Bb/D]`

### Hmaty

Hmaty akordov sa dajú zapísať v nasledujúcom formáte:

```
{define: <chord> base-fret <base> frets <Low-E> <A> <D> <G> <B> <E>}
```

Napríklad: ` {define: E5 base-fret 7 frets 0 1 3 3 x x} `

### Hmaty s označením prstov

Hmaty s označením prstov sa dajú písať v nasledujúcom formáte:

```
{define: <chord> base-fret <base> frets <Low-E> <A> <D> <G> <B> <E> fingers <Low-E> <A> <D> <G> <B> <E>}
```

Napríklad: `{define: E5 base-fret 7 frets 0 1 3 3 x x fingers - 1 2 3 - -}`

## Komentáre

Komentáre sa začínajú znakom '#'.
